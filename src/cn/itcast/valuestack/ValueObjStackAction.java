package cn.itcast.valuestack;

import com.opensymphony.xwork2.ActionSupport;

import cn.itcast.entity.User;
//从值栈中获取对象
public class ValueObjStackAction extends ActionSupport {
	
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
