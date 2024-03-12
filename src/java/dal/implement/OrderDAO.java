/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import java.util.LinkedHashMap;
import java.util.List;
import model.Order;

/**
 *
 * @author Admin
 */
public class OrderDAO extends GenericDAO<Order> {

    @Override
    public List<Order> findAll() {
        return queryGenericDAO(Order.class);
    }

    @Override
    public int insert(Order t) {
        String sql = "INSERT INTO [dbo].[Order]\n"
                + "           ([ammount]\n"
                + "           ,[accountId]\n"
                + "           ,[createTime])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?)";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("ammount", t.getAmmount());
        parameterMap.put("accountId",t.getAccountId());
        parameterMap.put("createTime", t.getCreateTime());
        return insertGenericDAO(sql, parameterMap);
    }

}
