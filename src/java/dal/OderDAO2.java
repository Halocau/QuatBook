/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Order;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class OderDAO2 extends DBContext {

    protected PreparedStatement statement;//thực thi các câu lệnh SQL trước khi thực sự thực thi
    protected ResultSet resultSet;// giống như 1 cái bảng , như sql manager

    public List<Order> findAll() {
        List<Order> list = new ArrayList<>();
        connection = getConnection();
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Order]";
        try {
            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                float ammount = resultSet.getFloat("ammount");
                int accountId = resultSet.getInt("accountId");
                Date createTime = resultSet.getDate("createTime");
                Order order = new Order(id, ammount, accountId, createTime);
                list.add(order);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OderDAO2.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    

    public List<Order> productAll(int accountId) {
        List<Order> list = new ArrayList<>();
        connection = getConnection();
        String sql = "SELECT * FROM dbo.[Order]\n"
                + "WHERE [accountId] = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setObject(1, accountId);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                float ammount = resultSet.getFloat("ammount");
                
                Date createTime = resultSet.getDate("createTime");
                Order order = new Order(id, ammount, accountId, createTime);
                list.add(order);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OderDAO2.class.getName()).log(Level.SEVERE, null, ex);
        }
        return  list;
    }
    public static void main(String[] args) {
        for (Order order : new OderDAO2().productAll(34)) {
            System.out.println(order);
        }
    }
}
