
package DAO;

public class Usuario {
    private String UserName = "";
    private String Password = "";
    private String NameUser = "";
    private String Name = "";

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getNameUser() {
        return NameUser;
    }

    public void setNameUser(String NameUser) {
        this.NameUser = NameUser;
    }
    
    public String getName() {
        return Name;
    }
    
    public void setName(String Name) {
        this.Name = Name;
    }
}
