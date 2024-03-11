/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author Admin
 */
public class AccountDAO2 extends DBContext {

    protected PreparedStatement statement;//thực thi các câu lệnh SQL trước khi thực sự thực thi
    protected ResultSet resultSet;// giống như 1 cái bảng , như sql manager

    public List<Account> findAll() {
        List<Account> list = new ArrayList<>();
        connection = getConnection();
        String sql = "SELECT * FROM [dbo].[Account]";
        try {
            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String username = resultSet.getString("username").trim();
                String password = resultSet.getString("password").trim();
                String email = resultSet.getString("email").trim();
                String address = resultSet.getString("address").trim();
                int roleId = resultSet.getInt("roleId");
                Account account = new Account(id, username, password, email, address, roleId);
                list.add(account);
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return list;
    }

    public void editUserAccount(Account account) {
        connection = getConnection();
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET [username] = ?\n"
                + "      ,[password] = ?\n"
                + "      ,[email] = ?\n"
                + "      ,[address] = ?\n"
                + "      ,[roleId] = ?\n"
                + " WHERE [id] = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setObject(1, account.getUsername());
            statement.setObject(2, account.getPassword());
            statement.setObject(3, account.getEmail());
            statement.setObject(4, account.getAddress());
            statement.setObject(5, account.getRoleId());
            statement.setObject(6, account.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO2.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void delete(Account account) {
        connection = getConnection();
        String sql = "DELETE FROM [dbo].[Account]\n"
                + "      WHERE id = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setObject(1, account.getId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO2.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public List<Account> loadAccountUser() {
        List<Account> list = new ArrayList<>();
        connection = getConnection();
        String sql = "SELECT * FROM [dbo].[Account]\n"
                + "WHERE roleId = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setObject(1, 2);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                int roleId = resultSet.getInt("roleId");
                Account account = new Account(id, username, password, email, address, roleId);
                list.add(account);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO2.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public static void main(String[] args) {
        Account a = new Account(25, "hi", "1234", "", "", 2);
        AccountDAO2 ad = new AccountDAO2();
        ad.editUserAccount(a);
        for (Account account : ad.loadAccountUser()) {
            System.out.println(account);
        }
    }
}
