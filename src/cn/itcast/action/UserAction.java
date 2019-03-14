package cn.itcast.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

public class UserAction extends ActionSupport {

	/**
	 * 
	 */
	public UserAction() {
		System.out.println("UserAction创建了............");
	}
	
	@Override
	public String execute() throws Exception {
		//获取值栈对象
		//验证值栈对象只有一个
		ActionContext context = ActionContext.getContext();
		ValueStack stack1 = context.getValueStack();
		ValueStack stack2 = context.getValueStack();
		System.out.println(stack1+"....." + stack2);
		return NONE;
	}
	
}
