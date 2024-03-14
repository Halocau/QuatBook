/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.OrderDetail;

/**
 *
 * @author Admin
 */
public class OrderDetailDAO extends GenericDAO<OrderDetail> {

    @Override
    public List<OrderDetail> findAll() {
        return queryGenericDAO(OrderDetail.class);
    }

    @Override
    public int insert(OrderDetail t) {
        String sql = "INSERT INTO [dbo].[OrderDetail]\n"
                + "           ([quantity]\n"
                + "           ,[productId]\n"
                + "           ,[orderId])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?)";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("quantity", t.getQuantity());
        parameterMap.put("productId", t.getProductId());
        parameterMap.put("orderId", t.getOrderId());
        return insertGenericDAO(sql, parameterMap);
    }

    public List<OrderDetail> findOrderId(int orderId) {
        String sql = "SELECT * FROM dbo.OrderDetail\n"
                + "WHERE orderId = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("orderId", orderId);
        return queryGenericDAO(OrderDetail.class, sql, parameterMap);
    }
     public List<OrderDetail> findOrderIdQuantity(int id) {
        String sql = "SELECT [quantity] FROM dbo.OrderDetail\n"
                + "WHERE id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", id);
        return queryGenericDAO(OrderDetail.class, sql, parameterMap);
    }
    public static void main(String[] args) {

        for (OrderDetail orderDetail : new OrderDetailDAO().findOrderIdQuantity(3)) {
            System.out.println(orderDetail);
        }
    }//findOrderId(od)

    public List<OrderDetail> delete(int id) {
        String sql = "DELETE FROM [dbo].[OrderDetail]\n"
                + "      WHERE [id] = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", id);
        return queryGenericDAO(OrderDetail.class, sql, parameterMap);
    }
}
