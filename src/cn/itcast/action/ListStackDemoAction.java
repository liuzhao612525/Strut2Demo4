package cn.itcast.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

import cn.itcast.entity.User;

/**
 * @author liuzhao
 *
 */
public class ListStackDemoAction extends ActionSupport {
	
	private List<User> list = new ArrayList<User>();
	
	

	public List<User> getList() {
		return list;
	}



	@Override
	public String execute() throws Exception {
		User user = new User();
		user.setUsername("lucy");
		user.setAddress("china");
		user.setPassword("123456");
		
		User user1 = new User();
		user1.setUsername("zhangsan");
		user1.setAddress("china");
		user1.setPassword("654321");
		
		list.add(user);
		list.add(user1);
		
		return "success";
	}
}
