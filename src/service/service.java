package service;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.ArrayList;

import beans.Goods;
import jdbc.jdbcConnect;
/**
 * Created by pupil on 2016/1/8.
 */
public class service {

    private Connection connection;
    private Statement statement;
    private ResultSet result;
    private String sql;
    private String obj;
    private int id;
    private ArrayList list;

    private int number;
    private String src;
    private String name;
    private int price;


    public String c;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getObj() {
        return obj;
    }

    public void setObj(String obj) {
        this.obj = obj;
    }

    public int getId() {   return id;  }

    public void setId(int id) {   this.id = id;   }

    public String getThing() {
        switch (getObj()) {
            case "socks":
                return "袜子";
            case "shoes":
                return "男鞋";
            case "high_shoes":
                return "女鞋";
            case "medicine":
                return "医药";
            case "fruit":
                return "水果";
            case "juice":
                return "饮料";
            default:
                return "零食";
        }
    }

//    public ArrayList setList(){
//
//    }
    public String  getC(){
        c+="<div class=\"content\">\n" +
                "        <p class=\"trGoodsName\">"+getName()+"</p>\n" +
                "        <img src=\""+getSrc()+"\" alt=\"\">\n" +
                "        <p class=\"delete\">删除</p>\n" +
                "        <p class=\"trPrice\"></p>\n" +
                "        <p class=\"trNumber\">"+getNumber()+"</p>\n" +
                "        <p class=\"perPrice\">"+getPrice()+"</p>\n" +
                "    </div>";
        return c;
    }

    public Goods getInformations(){
        Goods goods=new Goods();
        connection=jdbcConnect.getConnection();
        try{
            statement=connection.createStatement();
            sql="select name,address1,address2,address3,address4,address5,price from goodsinformations."+getObj()+" where id="+getId();//where前边别忘加空格了。
            result=statement.executeQuery(sql);
            while (result.next()){
                goods.setName(result.getString("name"));
                goods.setAddress1(result.getString("address1"));
                goods.setAddress2(result.getString("address2"));
                goods.setAddress3(result.getString("address3"));
                goods.setAddress4(result.getString("address4"));
                goods.setAddress5(result.getString("address5"));
                goods.setPrice(result.getInt("price"));
            }
            System.out.print(goods.getPrice());
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return goods;
    }

    public Goods getGoods(){
        int number=0;
        Goods goods=new Goods();

        connection=jdbcConnect.getConnection();
        try {
            statement=connection.createStatement();
            sql="SELECT name,price,address FROM goodsinformations."+getObj();
            result=statement.executeQuery(sql);
            while(result.next())
            {
                number++;
                goods.setName(result.getString("name"));
                goods.setPrice(result.getInt("price"));
                goods.setAddress(result.getString("address"));
                goods.setContent(goods.getContent()+"<a href='addCartTable.jsp?obj="+getObj()+"&&id="+number+"' class=\"thing\"><img src=\""+goods.getAddress()+"\" alt=\""+goods.getName()+"\"> " +
                        "<p class=\"name\">"+goods.getName()+"</p>" +
                        "<p class=\"price\">￥"+goods.getPrice()+"</p>" +
                        "</a>\n");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return goods;
    }

//    public static void main(String args[]){
//        service s=new service();
//        s.setId(1);
//        s.setObj("shoes");
//        System.out.print(s.getGoods().getContent());
//    }
}
