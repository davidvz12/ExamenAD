/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Conexion {

    public Connection connection;
    private String message;
    private Statement statement;
    ResultSet resultSet;

    public Conexion() {
        
        try {
            //Class.forName("com.mysql.jdbc.Driver");
            //connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectofinanciero", "root", "");
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Examen", "postgres", "123");
            statement = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            //connection = DriverManager.getConnection(url, username, password);
            
            message = "ok";
        } catch (Exception ex) {
            message = ex.getMessage();
        }
    }

  

}
