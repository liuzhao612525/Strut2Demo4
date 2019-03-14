package cn.itcast.valuestack;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;


//从值栈中获取字符串
public class ValueStackAction extends ActionSupport {
	
	private String username;
	
	
	public String getUsername() {
		return username;
	}


	@Override
	public String execute() throws Exception {
		
		username = "zhangsan";
		
		
		ActionContext context = ActionContext.getContext();
		ValueStack stack = context.getValueStack();
		
		//向值栈中放数据：第一种：使用值栈对象里面的set方法
		stack.set("address", "itcastitheima");
		
		//向值栈中放数据：第二种：使用值栈对象里面的方法
		stack.push("addd");
		
		return "success";
	}
}
