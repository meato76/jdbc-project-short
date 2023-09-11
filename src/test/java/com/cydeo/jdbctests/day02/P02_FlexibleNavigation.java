package com.cydeo.jdbctests.day02;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigation {


    String dbURL ="jdbc:oracle:thin:@100.26.235.33:1521:XE";     // INSTEAD OF THIS URL USE YOUR IP FROM EC2 INSTANCE
    //String dbURL ="jdbc:oracle:thin:@100.26.235.33:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void flexibleNavigation() throws SQLException {

        // DriverManager class will helps us to create connection with help getConnection
        Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        //It helps us to execute queries
        Statement stmnt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        //ResultSet Object will store data after execution. it stores only data
        ResultSet rs = stmnt.executeQuery("select first_name, last_name from employees");


        //get me first row information

        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));

        //get me second row information
        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));



        /*
        ResultSet.TYPE_SCROLL_INSENSITIVE --> To do flexible navigator
        ResultSet.CONCUR_READ_ONLY --> This type of resultSet Object is not updatable
         */



        //get me last row information
        //rs.last() --> true if the cursor is on a valid row; false if there are no rows in the result set

        rs.last();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));

        //How many rows we have
        System.out.println("Rows  number ="+ rs.getRow());

        //Get data from row 8
        rs.absolute(8);
        System.out.println("rs.getRow() = " + rs.getRow());
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        /*
        How can we get how many rows we have
        rs.last();
        int rowNumber= rs.getRows();


        */

        rs.previous();
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        //print all rows information

        // How to print all data from beginning we need to move cursor into beforeFirstRow
        rs.beforeFirst();

        //How to print all resul set info

        while( rs.next()){
            System.out.println(rs.getString(1) + " " + rs.getString(2));
        }


        rs.close();
        stmnt.close();
        conn.close();

    }
}
