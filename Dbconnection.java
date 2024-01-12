package com.cloudarmor.kk.action;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author java2
 */
public class Dbconnection {
    public static Connection con;
        public static Connection getConnection() throws ClassNotFoundException, SQLException
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloudarmor","root","root");
            return con;
        }
}
