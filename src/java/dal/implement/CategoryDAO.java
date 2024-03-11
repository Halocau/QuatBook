/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import java.util.List;
import model.Category;

/**
 *
 * @author Admin
 */
public class CategoryDAO extends GenericDAO<Category>{

    @Override
    public List<Category> findAll() {
        return queryGenericDAO(Category.class);
    }

    @Override
    public int insert(Category t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    public static void main(String[] args) {
        for (Category category : new CategoryDAO().findAll()) {
            System.out.println(category);
        }
    }
}
