package com.cydeo.jdbctests.day02;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P01_TestOracleConnection {

        String dbURL ="jdbc:oracle:thin:@100.26.235.33:1521:XE";     // INSTEAD OF THIS URL USE YOUR IP FROM EC2 INSTANCE
       //String dbURL ="jdbc:oracle:thin:@100.26.235.33:1521:XE";
    String dbUsername = "hr";
        String dbPassword = "hr";

    @Test
    public void testConnection() throws SQLException {

        // DriverManager class will helps us to create connection with help getConnection
        Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        //It helps us to execute queries
        Statement stmnt = conn.createStatement();

        //ResultSet Object will store data after execution. it stores only data
        ResultSet rs = stmnt.executeQuery("select * from regions");

        //If we wanna get data from database we are ganna implement in here
/*

        //Get ME FIRST ROW REGION_ID
        //next() -- true if the new current row is valid, false if there are no more rows

       rs.next();
        System.out.println("first row info");

        System.out.println("rs.getString(1) = " + rs.getString(1));
        System.out.println(rs.getString("Region_id"));


        //Get me first row Region_Name

        System.out.println(rs.getString("region_name"));


        //Second row 2- Americas

        System.out.println("second row info");
        rs.next();
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        //Third row 3- Asia
        System.out.println("Third row info");
        rs.next();
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        //Fourth row 4- Middle East and Africa
        System.out.println("fourth row info");
        rs.next();
        System.out.println(rs.getString(1) + " " + rs.getString(2));


 */

        // What if we have 100 rows

        while (rs.next()){

            System.out.println("--------------------------");
            System.out.println(rs.getString(1) + " - " + rs.getString(2));
        }


        rs.close();
        stmnt.close();
        conn.close();

    }
}
