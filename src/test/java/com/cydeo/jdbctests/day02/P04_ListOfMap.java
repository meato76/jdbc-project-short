package com.cydeo.jdbctests.day02;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.*;

public class P04_ListOfMap {

    String dbURL ="jdbc:oracle:thin:@100.26.235.33:1521:XE";     // INSTEAD OF THIS URL USE YOUR IP FROM EC2 INSTANCE
    //String dbURL ="jdbc:oracle:thin:@100.26.235.33:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";
    @Test
    public void listOfMap () throws SQLException {

        // DriverManager class will helps us to create connection with help getConnection
        Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        //It helps us to execute queries
        Statement stmnt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        //ResultSet Object will store data after execution. it stores only data
        ResultSet rs = stmnt.executeQuery("select FIRST_NAME,LAST_NAME, SALARY from employees");


        //ResultSetMetaData
        ResultSetMetaData rsmd = rs.getMetaData();

        //Creat a list to put maps for each row

        List<Map<String, Object>> dataList = new ArrayList<>();

        //iterate each row
        while (rs.next()){
        //store data for that row into Map

        Map<String,Object> rowMap = new HashMap<>();
            for (int i =1 ; i <= rsmd.getColumnCount(); i++) {
                rowMap.put(rsmd.getColumnName(i),rs.getString(i));

            }
            dataList.add(rowMap);

        }

        System.out.println("PRINT ALL DATA FROM ANY QUERY");
        for (Map<String, Object> eachRow : dataList) {
            System.out.println("eachRow = " + eachRow);

        }



        rs.close();
        stmnt.close();
        conn.close();
    }
}
