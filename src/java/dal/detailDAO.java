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
import model.OrderDetail;

/**
 *
 * @author Admin
 */
public class detailDAO extends DBContext {

    protected PreparedStatement statement;//thực thi các câu lệnh SQL trước khi thực sự thực thi
    protected ResultSet resultSet;// giống như 1 cái bảng , như sql manager

    public List<OrderDetail> checkQuantity(int id) {
        List<OrderDetail> list = new ArrayList<>();
        connection = getConnection();
        String sql = "SELECT [quantity]\n"
                + "  FROM \n"
                + "  [dbo].OrderDetail\n"
                + "  WHERE [id] = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setObject(1, id);
            resultSet = statement.executeQuery();
            if(resultSet.next()){
                int quantity = resultSet.getInt("quantity");
                OrderDetail detail =new OrderDetail();
            }
           
        } catch (SQLException ex) {
            Logger.getLogger(detailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    public static void main(String[] args) {
        System.out.println(new detailDAO().checkQuantity(5));
            
        }
    }
}
