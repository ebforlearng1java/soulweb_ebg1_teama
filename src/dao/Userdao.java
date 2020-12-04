package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import bean.LoginInfo;
import bean.ShowInfo;
import bean.UserInfo;

public class Userdao {
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;
	private int soul_id = 100000;

	public int checkUser(String col, String keyw) throws Exception {
		conn = Dbcon.getConnection();
		String sql = "select * from soul_login where " + col + "='" + keyw + "'";

		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		int i = 0;
		if (rs.next()) {
			i = 1;
		}
		Dbcon.closeConn(conn, stmt, rs);
		return i;
	}

	public int registUser(UserInfo user) throws Exception {
		int i = 0;
		String birthday = user.getAge_y() + user.getAge_m() + user.getAge_d();
		String hobby = user.getHobby_1() + "," + user.getHobby_2() + "," +
				user.getHobby_3() + "," + user.getHobby_4() + ","
				+ user.getHobby_5() + "," + user.getHobby_6();
		String hobbytmp=hobby.replace("null,", "");
		hobby=hobbytmp.replace(",null", "");
		conn = Dbcon.getConnection();

		String get_last = "select * from soul_login order by soul_userid DESC limit 1";
		stmt = conn.prepareStatement(get_last);
		rs = stmt.executeQuery();
		if (rs.next()) {
			soul_id = rs.getInt("soul_userid") + 1;
		}
		stmt.close();

		String sql = "insert into soul_login (soul_userid,soul_login_mail,soul_pw) VALUES (?,?,?)";
		stmt = conn.prepareStatement(sql);
		try {
			stmt.setInt(1, soul_id);
			stmt.setString(2, user.getSoul_login_mail());
			stmt.setString(3, user.getSoul_pw());
			stmt.executeUpdate();
			stmt.close();

			sql = "insert into soul_user (soul_userid,soul_name,soul_sex,birthday,star,city,hobby) VALUES (?,?,?,?,?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, soul_id);
			stmt.setString(2, user.getSoul_name());
			stmt.setString(3, user.getSoul_sex());
			stmt.setString(4, birthday);
			stmt.setString(5, user.getStar());
			stmt.setString(6, user.getCity());
			stmt.setString(7, hobby);
			i = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dbcon.closeConn(conn, stmt, rs);
		}

		return i;
	}

	public int modify(UserInfo user) throws Exception {
		int i = 0;
		String sql;
		String birthday = user.getAge_y() + user.getAge_m() + user.getAge_d();
		String hobby = user.getHobby_1() + "," + user.getHobby_2() + "," + user.getHobby_3() + "," + user.getHobby_4()
				+ ","
				+ user.getHobby_5() + "," + user.getHobby_6();
		String hobbytmp=hobby.replace("null,", "");
		hobby=hobbytmp.replace(",null", "");
		conn = Dbcon.getConnection();
		Map<String, Object> session = ActionContext.getContext().getSession();
		soul_id = (int) session.get("userid_1");
		sql = "select * from soul_user where soul_userid=" + soul_id + ";";
		stmt = conn.prepareStatement(sql, ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE);
		try {
			rs = stmt.executeQuery();
			if (rs.next()) {
				rs.updateString("soul_name", user.getSoul_name());
				rs.updateString("soul_sex", user.getSoul_sex());
				rs.updateString("birthday", birthday);
				rs.updateString("star", user.getStar());
				rs.updateString("city", user.getCity());
				rs.updateString("hobby", hobby);
				rs.updateRow();
				i = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dbcon.closeConn(conn, stmt, rs);
		}
		return i;
	}

	public LoginInfo getLoginlog(String id) throws SQLException {
		LoginInfo log = new LoginInfo();
		conn = Dbcon.getConnection();
		String sql = "select * from soul_login where soul_login_mail='" + id + "'";
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		if (rs.next()) {
			log.setSoul_login_mail(rs.getString("soul_login_mail"));
			log.setSoul_pw(rs.getString("soul_pw"));
			log.setSoul_userid(rs.getInt("soul_userid"));
			Dbcon.closeConn(conn, stmt, rs);
			return log;
		}
		Dbcon.closeConn(conn, stmt, rs);
		return null;
	}

	public void payuser(String id, String targetid) throws SQLException {
		conn = Dbcon.getConnection();

		String sql = "insert into paystatus (soul_key,soul_userid,soul_target_userid) VALUES (?,?,?)";
		stmt = conn.prepareStatement(sql);
		stmt.setString(1, id+targetid);
		stmt.setInt(2, Integer.parseInt(id));
		stmt.setInt(3, Integer.parseInt(targetid));
		stmt.executeUpdate();
		Dbcon.closeConn(conn, stmt, null);

	}

	public List<ShowInfo> finduser(String id) throws SQLException {
		List<ShowInfo> userlist = new ArrayList<ShowInfo>();
		conn = Dbcon.getConnection();
		String sql = "select * from soul_user where soul_userid='" + id + "'";
		String sqlpay = "select * from paystatus where soul_userid='" + id + "'";
		String sqlAll = "select * from soul_user";
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		String city = "";
		String birthday = "";
		String star = "";
		String[] hobbylist;
		try {
			if (rs.next()) {
				city = rs.getString("city");
				birthday = rs.getString("birthday").substring(0,4);
				star = rs.getString("star");
				hobbylist = rs.getString("hobby").split(",");
			} else {
				return null;
			}
			stmt.close();
			rs.close();

			stmt = conn.prepareStatement(sqlAll);
			rs = stmt.executeQuery();
			while (rs.next()) {
				if (!id.equals(rs.getString("soul_userid"))) {
					List<String> msg = new ArrayList<String>();
					if (city.equals(rs.getString("city"))) {
						msg.add("同場所");
					}
					if (birthday.equals(rs.getString("birthday").substring(0,4))) {
						msg.add("同年齢");
					}
					if (star.equals(rs.getString("star"))) {
						msg.add("同星座");
					}
					for (String hobby : hobbylist) {
						if (rs.getString("hobby").contains(hobby)) {
							msg.add(hobby);
						}
					}

					if (msg.size() > 0) {
						ShowInfo us = new ShowInfo();
						PreparedStatement stmtpay = conn.prepareStatement(sqlpay);
						ResultSet rspay = stmtpay.executeQuery();
						while (rspay.next()) {
							if (rs.getString("soul_userid").equals(rspay.getString("soul_target_userid"))) {
								String sql2 = "select * from soul_login where soul_userid='"
										+ rs.getString("soul_userid") + "'";
								PreparedStatement stmt2 = conn.prepareStatement(sql2);
								ResultSet rs2 = stmt2.executeQuery();
								rs2.next();
								us.setPayText(rs2.getString("soul_login_mail"));
								stmt2.close();
								rs2.close();
								break;
							}
						}
						stmtpay.close();
						rspay.close();
						us.setSoul_name(rs.getString("soul_name"));
						us.setSoul_userid(rs.getInt("soul_userid"));
						if (us.getPayText() == null) {
							us.setPayText(msg.toString());
						}
						userlist.add(us);
					}
				}
			}
			return userlist;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			Dbcon.closeConn(conn, stmt, rs);
		}
	}
}
