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

    public List<OrderDetail> findOrderId(OrderDetail orderDetail) {
        String sql = "SELECT * FROM dbo.OrderDetail\n"
                + "WHERE orderId = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("orderId", orderDetail.getOrderId());
        return queryGenericDAO(OrderDetail.class, sql, parameterMap);
    }

    public static void main(String[] args) {
        OrderDetail od = new OrderDetail();
        od.setOrderId(13);
        for (OrderDetail orderDetail : new OrderDetailDAO().findOrderId(od)) {
            System.out.println(orderDetail);
        }
    }
}
