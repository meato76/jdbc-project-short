package com.cydeo.jdbctests.day02;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P03_MetadataTest {

    String dbURL ="jdbc:oracle:thin:@100.26.235.33:1521:XE";     // INSTEAD OF THIS URL USE YOUR IP FROM EC2 INSTANCE
    //String dbURL ="jdbc:oracle:thin:@100.26.235.33:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";
    @Test
    public void metadataTest () throws SQLException {

        // DriverManager class will helps us to create connection with help getConnection
        Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        //It helps us to execute queries
        Statement stmnt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        //ResultSet Object will store data after execution. it stores only data
        ResultSet rs = stmnt.executeQuery("select FIRST_NAME,LAST_NAME, SALARY from employees");


        //Database MetaData --> It is information about database itself

        DatabaseMetaData dbMetaData = conn.getMetaData();
        System.out.println("dbMetaData.getUserName() = " + dbMetaData.getUserName());
        System.out.println("dbMetaData.getDriverVersion() = " + dbMetaData.getDriverVersion());
        System.out.println("dbMetaData.getDriverName() = " + dbMetaData.getDriverName());
        System.out.println("dbMetaData.getDatabaseProductName() = " + dbMetaData.getDatabaseProductName());


        //ResultSet MetaData  -->it provides information about table upper side (columnName or columnCount)

        ResultSetMetaData rsmd = rs.getMetaData();


        //How many column we have?
        int columnCount = rsmd.getColumnCount();
        System.out.println("rsmd.getColumnCount() = " + rsmd.getColumnCount());

        //What is the name of second column?

        System.out.println("rsmd.getColumnName(2) = " + rsmd.getColumnName(2));


        //Get all column names?
        for (int i = 1; i <= columnCount; i++) {

            System.out.print("rsmd.getColumnName(i) = " + rsmd.getColumnName(i));

        }

        /*
        How to get data dynamically from any query?

        ResultSet  --> it holds table data

        rs.next()--> to iterate each row dynamically

        rs.getString(columnIndex) ---> will give info about this cell
        rs.getString(columLabel)


        ResultSetMetaData  --> it hold table info (columnCount / ColumnName)

        rsmd.getColumnCount()--> will give how many column we have
        rsmd.getColumnName(int columnIndex)  --> will give column Name

         */

        System.out.println("Print all data dynamically");

        //iterate each row
        while (rs.next()){

            for (int i = 1; i <= columnCount; i++) {

                System.out.print(rsmd.getColumnName(i) + "-" + rs.getString(i)+" ");

            }
            System.out.println();
        }


        rs.close();
        stmnt.close();
        conn.close();
    }
}
