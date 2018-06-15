package db;

import java.sql.*;
import javax.swing.JOptionPane;

public class dbconnect{
    
    public static Connection cn;
    public static Statement st;
    public static PreparedStatement insertUser;
    public static PreparedStatement getUser;
    public static PreparedStatement updateUser;
    public static PreparedStatement deleteUser;
    
    
    
    static{
    
        try{
            
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/registrationdb","root","prajapati");
                 st=cn.createStatement();
                 
                 insertUser = cn.prepareStatement("insert into REGISTRATION_ENTRIES (name,gender,dob,country,skills,adr)  values (?, ?, ?, ?, ?, ? ) ");
                 
                 getUser = cn.prepareStatement("select * from REGISTRATION_ENTRIES where name like ? ");
                 
                 updateUser = cn.prepareStatement("update REGISTRATION_ENTRIES set name=? , gender=?,dob=?,country=?,skills=?,adr=? where userid= ? "  );
                 
                 deleteUser = cn.prepareStatement("delete from REGISTRATION_ENTRIES where userid = ? ");
                 
                
                 
        }catch(Exception e){
                JOptionPane.showMessageDialog(null, e);
        }
    }
    
}
