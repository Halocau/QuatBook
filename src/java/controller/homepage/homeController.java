/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.homepage;

import constant.commonConst;
import dal.implement.CategoryDAO;
import dal.implement.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Category;
import model.Product;
import model.PageControl;

/**
 *
 * @author Admin
 */
public class homeController extends HttpServlet {

    ProductDAO productDAO = new ProductDAO();
    CategoryDAO categoryDAO = new CategoryDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PageControl pageControl = new PageControl();
        List<Product> listProduct = findProductDoGet(request, pageControl);
        //get dữ liệu list category
        List<Category> listCategory = categoryDAO.findAll();

        //truyền dữ liệu vào session
        HttpSession session = request.getSession();
        session.setAttribute(commonConst.SESSION_PRODUCT, listProduct);
        session.setAttribute(commonConst.SESSION_CATEGORY, listCategory);
        request.setAttribute("pageControl", pageControl);
        request.getRequestDispatcher("view/home/homepage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("home");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private List<Product> findProductDoGet(HttpServletRequest request, PageControl pageControl) {
        //get về page
        String pageRaw = request.getParameter("page");
        //validate page
        int page;
        try {
            page = Integer.parseInt(pageRaw);
            if (page <= 0) {
                page = 1;
            }
        } catch (NumberFormatException e) {
            page = 1;
        }

        String actionSearch = request.getParameter("action") == null
                ? "default" : request.getParameter("action");
        List<Product> listProduct = null;
        // get về request url:
        String requestURL = request.getRequestURL().toString();
        //total record
        int totalRecord = 0;
        switch (actionSearch) {
            case "category":
                String categoryId = request.getParameter("categoryId");
                totalRecord = productDAO.findTotalRecordByCategory(categoryId);
                listProduct = productDAO.findByCategoryId(categoryId, page);
                pageControl.setUrlPattern(requestURL + "?search=category&categoryId=" + categoryId + "&");
                break;
            case "search":
                String keyword = request.getParameter("keyword");
                totalRecord = productDAO.findTotalRecordByName(keyword);
                listProduct = productDAO.searchByName(keyword, page);
                pageControl.setUrlPattern(requestURL + "?search=searchByName&keyword=" + keyword + "&");
                break;
            default:
                totalRecord = productDAO.findTotalRecord();
                listProduct = productDAO.findByPage(page);
                pageControl.setUrlPattern(requestURL + "?");
        }

        //total page
        // số bản ghi / số bản ghi 1 trang
        int totalPage = (totalRecord % commonConst.RECORD_PER_PAGE) == 0
                ? (totalRecord / commonConst.RECORD_PER_PAGE)
                : (totalRecord / commonConst.RECORD_PER_PAGE) + 1;
        // set total record, total page, page vào pageControler
        pageControl.setPage(page);
        pageControl.setTotalPage(totalPage);
        pageControl.setTotalRecord(totalRecord);
        return listProduct;
    }
}
