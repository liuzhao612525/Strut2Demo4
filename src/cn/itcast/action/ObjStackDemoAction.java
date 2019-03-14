package cn.itcast.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

import cn.itcast.entity.User;

/**
 * @author liuzhao
 *
 */
public class ObjStackDemoAction extends ActionSupport {
	
	private User user = new User();
	
	public User getUser() {
		return user;
	}

	@Override
	public String execute() throws Exception {
		
		user.setUsername("lucy");
		user.setAddress("china");
		user.setPassword("123456");
		
		return "success";
	}
}
