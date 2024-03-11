/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import java.util.LinkedHashMap;
import java.util.List;
import model.Account;

/**
 *
 * @author Admin
 */
public class AccountDao extends GenericDAO<Account> {

    @Override
    public List<Account> findAll() {
        return queryGenericDAO(Account.class);
    }

//    public static void main(String[] args) {
//        for (Account account : new AccountDao().findAll()) {
//            System.out.println(account);
//        }
//    }
    @Override
    public int insert(Account t) {
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([username]\n"
                + "           ,[password]\n"
                + "           ,[email]\n"
                + "           ,[address]\n"
                + "           ,[roleId])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,2)";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("username", t.getUsername());
        parameterMap.put("password", t.getPassword());
        parameterMap.put("email", t.getEmail());
        parameterMap.put("address", t.getAddress());
        return insertGenericDAO(sql, parameterMap);
    }

    public boolean checkUsernameExist(Account account) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Account]\n"
                + "  WHERE [username] = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("username", account.getUsername());
        return !queryGenericDAO(Account.class, sql, parameterMap).isEmpty();
    }

    public Account findByUsernameAndPass(Account account) {
        String sql = "SELECT * FROM [dbo].[Account]\n"
                + "WHERE username = ? AND [password] = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("username", account.getUsername());
        parameterMap.put("password", account.getPassword());
        List<Account> list = queryGenericDAO(Account.class, sql, parameterMap);
        return list.isEmpty() ? null : list.get(0);
    }

    public List<Account> loadAccountUser() {
        String sql = "SELECT * FROM [dbo].[Account]\n"
                + "WHERE roleId = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("roleId", 2);
        return queryGenericDAO(Account.class, sql, parameterMap);
    }
    public static void main(String[] args) {
        for (Account account : new AccountDao().loadAccountUser()) {
            System.out.println(account);
        }
    }
}
