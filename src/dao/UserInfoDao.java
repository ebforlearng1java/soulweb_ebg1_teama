package dao;

public class UserInfoDao {

	// USER項目
	// ユーザー番号
	private String soul_userid;
	// 名称
	private String soul_name;
	// 性別
	private String soul_sex;
	// 生年月日
	private String birthday;
	// 星座
	private String star;
	// 都市
	private String city;
	// 趣味1
	private String hobby;

	// LOGIN項目
	// ログインＩＤ
	private String soul_login_mail;
	// パスワード
	private String soul_pw;

	public String getSoul_userid() {
		return soul_userid;
	}
	public void setSoul_userid(String soul_userid) {
		this.soul_userid = soul_userid;
	}
	public String getSoul_name() {
		return soul_name;
	}
	public void setSoul_name(String soul_name) {
		this.soul_name = soul_name;
	}
	public String getSoul_sex() {
		return soul_sex;
	}
	public void setSoul_sex(String soul_sex) {
		this.soul_sex = soul_sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getSoul_login_mail() {
		return soul_login_mail;
	}
	public void setSoul_login_mail(String soul_login_mail) {
		this.soul_login_mail = soul_login_mail;
	}
	public String getSoul_pw() {
		return soul_pw;
	}
	public void setSoul_pw(String soul_pw) {
		this.soul_pw = soul_pw;
	}


}
