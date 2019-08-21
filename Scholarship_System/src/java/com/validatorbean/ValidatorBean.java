package com.validatorbean;

//Creating a managed bean
import javax.faces.bean.ManagedBean;

//import javax.faces.bean.SessionScoped;
@ManagedBean(name="validator")

//@SessionScoped
public class ValidatorBean {
    private String username;

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }
    
    public String check(){
        return "index";
    }
}
