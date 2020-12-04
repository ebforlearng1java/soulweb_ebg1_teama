package action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import bean.LoginInfo;
import dao.Userdao;

public class LoginAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String soul_login_mail;
	private String soul_pw;

	public String login() throws Exception {
		Userdao userdao = new Userdao();
		LoginInfo log = userdao.getLoginlog(soul_login_mail);

		if (log != null) {
			String pwd = log.getSoul_pw();
			int soul_userid = log.getSoul_userid();
			if (pwd.equals(soul_pw)) {
				Map<String, Object> session = ActionContext.getContext().getSession();
				session.put("userid", soul_login_mail);
				session.put("userid_1", soul_userid);
				return "success";
			}
			this.addFieldError("errorUser", "パスワードが間違っています。");
			return "false";
		}
		this.addFieldError("errorUser", soul_login_mail+"メールアドレスが存在していません");
		return "false";
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