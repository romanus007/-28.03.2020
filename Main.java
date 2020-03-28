package com.company;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Connection conn = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {

            String url = "jdbc:mysql://195.19.44.146:3306/user1?useUnicode=true&serverTimezone=UTC";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url,"user1","user1");
           // System.out.println("Connected...!");
            statement = conn.createStatement();
            resultSet = statement.executeQuery("select * FROM Rejs WHERE nomer LIKE 7");
            while(resultSet.next()) {
                String column1 = resultSet.getString(2);
                String column2 = resultSet.getString(3);
                String column3 = resultSet.getString(4);
               String column4 = resultSet.getString(5);
                String column5 = resultSet.getString(6);
                String column6 = resultSet.getString(7);
                String column7 = resultSet.getString(8);
               String column8 = resultSet.getString(9);
                System.out.println("aeroport_vyleta: "+column1+"  aeroport_prileta: "+column2+"  Samolet_nomer: "+column3+"  vremya_vyleta: "+column4+"  vremya_prileta: "+column5+"  tip: "+column6+"  dalnost: "+column7+"  chastota: "+column8);
            }

        } catch (Exception e) {

        }

    }
}