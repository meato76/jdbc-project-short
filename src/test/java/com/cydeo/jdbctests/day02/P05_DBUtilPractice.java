package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class P05_DBUtilPractice {

    @Test
    public void dbUtilPractice(){

        //Create connection
        DB_Util.createConnection();

        //Run Query
        DB_Util.runQuery("select first_name,last_name,salary from employees");

        System.out.println("GEt me first row first column --> STEVEN");
        System.out.println(DB_Util.getFirstRowFirstColumn());

        System.out.println("GEt me all column names");

        System.out.println(DB_Util.getAllColumnNamesAsList());

        System.out.println("GEt me all first names ");

        System.out.println(DB_Util.getColumnDataAsList(1));

        System.out.println("GEt me how many rows we have ");

        System.out.println(DB_Util.getRowCount());

        System.out.println("GEt me all data from execution ");

        List<Map<String, String>> allRowAsListOfMap = DB_Util.getAllRowAsListOfMap();

        for (Map<String, String> eachMap : allRowAsListOfMap) {
            System.out.println(eachMap);
        }

        //close connection

        DB_Util.destroy();
    }
}
