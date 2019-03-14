package cn.itcast.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

/**
 * @author liuzhao
 *
 */
public class ValueStackDemoAction extends ActionSupport {
	


//	@Override
//	public String execute() throws Exception {
//		
//		ActionContext context = ActionContext.getContext();
//		ValueStack stack = context.getValueStack();
//		
//		//向值栈中放数据：第一种：使用值栈对象里面的set方法
//		stack.set("username", "itcastitheima");
//		
//		//向值栈中放数据：第二种：使用值栈对象里面的方法
//		stack.push("addd");
//		
//		return "success";
//	}
	
	
	//向值栈中放数据：第三种：在action中定义变量的方式
	
	private String name;
	
	public String getName() {
		return name;
	}
	@Override
	public String execute() throws Exception {
		
		name = "adddf";
		
		return "success";
	}
}
