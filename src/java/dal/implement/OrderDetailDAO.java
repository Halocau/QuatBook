/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import java.util.LinkedHashMap;
import java.util.List;
import model.OrderDetail;

/**
 *
 * @author Admin
 */
public class OrderDetailDAO extends GenericDAO<OrderDetail>{

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
    public static void main(String[] args) {
        for (OrderDetail orderDetail : new OrderDetailDAO().findAll()) {
            System.out.println(orderDetail);
        }
    }
}
