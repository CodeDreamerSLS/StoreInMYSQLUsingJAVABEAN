/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.test;

import java.sql.*;
import java.sql.PreparedStatement;



/**
 *
 * @author user
 */
public class Info{
     String uname,pwd;
    
    
    /**
     * @return the uname
     */
    public String getUname() {
        return uname;
    }

    /**
     * @param uname the uname to set
     */
    public void setUname(String uname) {
        this.uname = uname;
    }

    /**
     * @return the pwd
     */
    public String getPwd() {
        return pwd;
    }

    /**
     * @param pwd the pwd to set
     */
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
        public int store() throws ClassNotFoundException, SQLException {
        
            Connection con;
            Statement stmt;
            
            ResultSet rs;
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tutor","root","");
            
            // stmt=con.createStatement();
//             rs=stmt.executeQuery("select * from admininfo");
             PreparedStatement pstmt=con.prepareStatement("insert into login(username, password) values(?,?)");
             pstmt.setString(1,uname);
             pstmt.setString(2,pwd);
             int result= pstmt.executeUpdate();
             if(result==1){
                 return result;
             }
             else{ return result;}
              
    }
    
    

}
