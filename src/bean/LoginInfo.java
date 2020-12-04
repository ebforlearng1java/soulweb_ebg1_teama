package bean;

public class LoginInfo{
	// ユーザー番号
	private int soul_userid;
	// ログインＩＤ
	private String soul_login_mail;
	// パスワード
	private String soul_pw;

	public int getSoul_userid() {
		return soul_userid;
	}
	public void setSoul_userid(int soul_userid) {
		this.soul_userid = soul_userid;
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