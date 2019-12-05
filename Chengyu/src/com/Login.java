package com;


import java.util.HashMap;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class RegistServlet
 */
@WebServlet("/RegistServlet")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String username ;
	private String password;
	private String sex ;		
	private String nation ;
	private String age;
	private String hobby;
	private String description;

	public Login() {
        this.username = "";
        this.age = "";
        this.sex = "";
        this.nation="";
        this.hobby="";
        this.description="";
        new HashMap<String,String>();
    }
	public String getUsername() {
        return username;
    }
	public void setUsername(String username){
		this.username = username ;
	}
	public String getPassword() {
        return password;
    }
	public void setPassword(String password){
		this.password= password ;
	}
	public String getSex() {
        return sex;
    }
	public void setSex(String sex){
		this.sex =sex ;
	}
	public String getNation() {
        return nation;
    }
	public void setNation(String nation){
		this.nation= nation;
	}
	public String getAge() {
        return age;
    }
	public void setAge(String age){
		this.age= age;
	}
	public String getHobby() {
        return hobby;
    }
	public void setHobby(String hobby){
		this.hobby=hobby ;
	}

	public String getDescription() {
        return description;
    }
	public void setDescription(String description){
		this.description= description ;
	}
}

