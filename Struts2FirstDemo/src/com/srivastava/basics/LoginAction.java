package com.srivastava.basics;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

/*
 * There r 3 ways to Create Action
 * 1. POJO
 * 2. implements Action (execute)
 * 3. extend ActionSupport Class
 */
public class LoginAction extends ActionSupport implements SessionAware{ //implements Action {
	private String userid;
	private String pwd;
	private String message;
	private Map<String,Object> sessionMap ;
	public String getUserid() {
		return userid;
	}
	
	@Override
	public void validate(){
		if(this.getUserid().trim().length()==0){
			this.addFieldError("userid", this.getText("lbl.userid.error"));
		}
		if(this.getPwd().trim().length()==0){
			this.addFieldError("pwd", this.getText("lbl.pwd.error"));
		}
	}
	
	/*
	public String register(){
		
	}*/
	
	public String login(){
		if(this.getUserid().equals(this.getPwd())){
			this.setMessage("Welcome "+this.getUserid());
			sessionMap.put("user", this.getUserid());
			return SUCCESS;
		}
		else
		{
			this.setMessage("Invalid Userid or Password");
			return "invalid";
		}
	}
	
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.sessionMap = arg0;
		
	}
	
	
	

}
