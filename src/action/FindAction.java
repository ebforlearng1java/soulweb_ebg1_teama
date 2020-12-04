package action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import bean.ShowInfo;
import dao.Userdao;

public class FindAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private List<ShowInfo> userlist;

	public String search() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		//		 if(session.get("userid")==null){
		//		 this.addFieldError("errorUser","ログインセッションが切れました。再ログインしてください。");
		//			return "logout";
		//		}

		Userdao userdao = new Userdao();
		this.userlist = userdao.finduser(session.get("userid_1").toString());
		if (userlist == null || userlist.isEmpty()) {
			this.addFieldError("result", "一致しているユーザが存在していません。");
		}
		return "search";
	}

	public List<ShowInfo> getUserlist() {
		return userlist;
	}

	public void setUserlist(List<ShowInfo> userlist) {
		this.userlist = userlist;
	}

}