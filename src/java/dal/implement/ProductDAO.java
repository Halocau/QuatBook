/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import constant.commonConst;
import dal.DBContext;
import dal.GenericDAO;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;

/**
 *
 * @author Admin
 */
public class ProductDAO extends GenericDAO<Product> {

    @Override
    public List<Product> findAll() {
        return queryGenericDAO(Product.class);
    }

    @Override
    public int insert(Product t) {
        return insertGenericDAO(t);
    }

    public Product findById(Product product) {
        String sql = "SELECT * FROM [dbo].[Product]\n"
                + "WHERE id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", product.getId());
//        return queryGenericDAO(Product.class, sql, parameterMap);
        // vì chỉ tìm về 1 sản phẩm mà queryGenericDAO lại trả về 1 list
        // =>
        List<Product> list = queryGenericDAO(Product.class, sql, parameterMap);
        // nếu như hàm rỗng(empty) => ko có sản phẩm => trả về null
        //ko rỗng =>  có sản phẩm => nằm ở vị trí đầu tiên => lấy ở vị trí 0
        return list.isEmpty() ? null : list.get(0);
    }

    public List<Product> findByCategoryId(String categoryId, int page) {
        String sql = "SELECT * \n"
                + "FROM dbo.Product\n"
                + "WHERE categoryId =?\n"
                + "ORDER BY id\n"
                + "OFFSET ? ROW\n"
                + "FETCH NEXT ? ROW ONLY ";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryId", categoryId);
        parameterMap.put("offset", (page - 1) * commonConst.RECORD_PER_PAGE);
        parameterMap.put("fetch", commonConst.RECORD_PER_PAGE);
        return queryGenericDAO(Product.class, sql, parameterMap);
    }

    public List<Product> searchByName(String keyword, int page) {
        String sql = "SELECT *\n"
                + "  FROM [Product]\n"
                + "  where [name] like ?"
                + "  ORDER BY id\n"
                + "  OFFSET ? ROWS\n" //( PAGE - 1 ) * Y
                + "  FETCH NEXT ? ROWS ONLY"; // NUMBER_RECORD_PER_PAGE
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + keyword + "%");
        parameterMap.put("offset", (page - 1) * commonConst.RECORD_PER_PAGE);
        parameterMap.put("fetch", commonConst.RECORD_PER_PAGE);
        return queryGenericDAO(Product.class, sql, parameterMap) == null
                ? findAll() : queryGenericDAO(Product.class, sql, parameterMap);
    }

    public int findTotalRecordByCategory(String categoryId) {
        String sql = "SELECT COUNT(*)\n"
                + "FROM dbo.Product\n"
                + "WHERE categoryId = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryId", categoryId);
        return findTotalRecordGenericDAO(Product.class, sql, parameterMap);

    }

    public int findTotalRecordByName(String keyword) {
        String sql = "SELECT count(*)\n"
                + "  FROM Product\n"
                + "  where [name] like ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + keyword + "%");
        return findTotalRecordGenericDAO(Product.class, sql, parameterMap);
    }

    public List<Product> findByPage(int page) {
        String sql = "SELECT *\n"
                + "  FROM Product\n"
                + "  ORDER BY id\n"
                + "  OFFSET ? ROWS\n" //( PAGE - 1 ) * Y
                + "  FETCH NEXT ? ROWS ONLY"; // NUMBER_RECORD_PER_PAGE
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("offset", (page - 1) * commonConst.RECORD_PER_PAGE);
        parameterMap.put("fetch", commonConst.RECORD_PER_PAGE);
        return queryGenericDAO(Product.class, sql, parameterMap);

    }

    public int findTotalRecord() {
        String sql = "SELECT count(*)\n"
                + "  FROM Product\n";
        parameterMap = new LinkedHashMap<>();
        return findTotalRecordGenericDAO(Product.class, sql, parameterMap);
    }

    public void insertProduct(Product product) {
        String sql = "INSERT INTO [dbo].[Product]\n"
                + "           ([name]\n"
                + "           ,[image]\n"
                + "           ,[quantity]\n"
                + "           ,[price]\n"
                + "           ,[description]\n"
                + "           ,[categoryId])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            statement = connection.prepareStatement(sql, statement.RETURN_GENERATED_KEYS);
            statement.setObject(1, product.getName());
            statement.setObject(2, product.getImage());
            statement.setObject(3, product.getQuantity());
            statement.setObject(4, product.getPrice());
            statement.setObject(5, product.getDescription());
            statement.setObject(6, product.getCategoryId());
            statement.executeUpdate();
            resultSet = statement.getGeneratedKeys();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void delete(Product product) {
        String sql = "DELETE FROM [dbo].[Product]\n"
                + "      WHERE id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", product.getId());
        deleteGenericDAO(sql, parameterMap);
    }

    public void update(Product product) {
        String sql = "UPDATE [dbo].[Product]\n"
                + "   SET [name] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[categoryId] = ?\n"
                + " WHERE id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", product.getName());
        parameterMap.put("image", product.getImage());
        parameterMap.put("quantity", product.getQuantity());
        parameterMap.put("price", product.getPrice());
        parameterMap.put("description", product.getDescription());
        parameterMap.put("categoryId", product.getCategoryId());
        parameterMap.put("id", product.getId());
        updateGenericDAO(sql, parameterMap);
    }

//    public void update(Product product) {
//        connection = getConnection();
//        String sql = "UPDATE [dbo].[Product]\n"
//                + "   SET [name] = ?\n"
//                + "      ,[image] = ?\n"
//                + "      ,[quantity] = ?\n"
//                + "      ,[price] = ?\n"
//                + "      ,[description] = ?\n"
//                + "      ,[categoryId] = ?\n"
//                + " WHERE [id] = ?";
//        try {
//            statement = connection.prepareStatement(sql);
//            statement.setObject(1, product.getName());
//            statement.setObject(2, product.getImage());
//            statement.setObject(3, product.getQuantity());
//            statement.setObject(4, product.getPrice());
//            statement.setObject(5, product.getDescription());
//            statement.setObject(6, product.getCategoryId());
//            statement.setObject(7, product.getId());
//            statement.executeUpdate();
//        } catch (SQLException ex) {
//            ex.printStackTrace();
//        }
//}
}
