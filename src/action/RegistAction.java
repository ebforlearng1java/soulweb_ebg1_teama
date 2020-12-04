package action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import bean.UserInfo;
import dao.Userdao;

public class RegistAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private UserInfo user = new UserInfo();

	public String execute() throws Exception {
		Userdao userdao = new Userdao();
		if (userdao.checkUser("soul_login_mail", user.getSoul_login_mail()) == 1) {
			this.addFieldError("emailexist", "E-mailはすでに使用されています");
			return "false";
		}
		if (userdao.registUser(user) == 0) {
			return "false";
		}
		return "success";
	}

	public String checkid() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		Userdao userdao = new Userdao();
		if (userdao.checkUser("soul_login_mail", user.getSoul_login_mail()) == 1) {
			response.getWriter().print("1");
		} else {
			response.getWriter().print("2");
		}
		return null;
	}
	public UserInfo getUser() {
		return user;
	}

	public void setUser(UserInfo user) {
		this.user = user;
	}

}
