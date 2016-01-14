package jdbc;
import java.sql.*;

/**
 * Created by pupil on 2016/1/8.
 */
public class jdbcConnect {

    public static Connection connection;

    public static Connection getConnection()
    {
        //必不可少，不然出现一些不知道的因素。Class.forName("com.mysql.jdbc.Driver");catch (ClassNotFoundException e) {e.printStackTrace();}
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection =DriverManager.getConnection("jdbc:mysql://localhost:3306/goodsinformations","root","00j891eouw8w7b9");
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
       }  catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
