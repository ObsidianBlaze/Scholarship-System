package com.validatorbean;

//Creating a managed bean
import javax.faces.bean.ManagedBean;

//import javax.faces.bean.SessionScoped;
@ManagedBean(name="adminValidator")

//@SessionScoped

public class AdminValidatorBean {
    private String admin_username;
    private String admin_password;
    
    /**
     * @return the admin_username
     */
    public String getAdmin_username() {
        return admin_username;
    }

    /**
     * @param admin_username the admin_username to set
     */
    public void setAdmin_username(String admin_username) {
        this.admin_username = admin_username;
    }

    /**
     * @return the admin_password
     */
    public String getAdmin_password() {
        return admin_password;
    }

    /**
     * @param admin_password the admin_password to set
     */
    public void setAdmin_password(String admin_password) {
        this.admin_password = admin_password;
    }

    //Method to navigate to a new page.
    public String page2(){
        return"admin_page";
    }

    
}
