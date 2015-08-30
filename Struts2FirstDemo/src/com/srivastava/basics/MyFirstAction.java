package com.srivastava.basics;

public class MyFirstAction {
	private String message;
	public String myMethod(){
		this.setMessage("Hello JSP");
		return "success";
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	

}
