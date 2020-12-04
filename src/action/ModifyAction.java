package action;

import com.opensymphony.xwork2.ActionSupport;

import bean.UserInfo;
import dao.Userdao;


public class ModifyAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private UserInfo user = new UserInfo();

	public String execute() throws Exception {
		Userdao userdao = new Userdao();
		if (userdao.modify(user) == 0) {
			return "false";
		}
		return "success";
	}

	public UserInfo getUser() {
		return user;
	}

	public void setUser(UserInfo user) {
		this.user = user;
	}
}
