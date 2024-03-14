/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import constant.commonConst;
import dal.AccountDAO2;
import dal.OderDAO2;
import dal.implement.OrderDetailDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author Admin
 */
public class DashBoardUser extends HttpServlet {

    OrderDetailDAO oddao = new OrderDetailDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        //get về danh sách theo accountId
        int accountId = ((Account) session.getAttribute(commonConst.SESSION_ACCOUNT)).getId();
        OderDAO2 oder2 = new OderDAO2();
        List<Order> lider = oder2.productAll(accountId);
        session.setAttribute("oder2", lider);

        // lấy danh sách order ra
        Order order = new Order();
        OrderDetail orderDetail = new OrderDetail();
//        int orderId;
//        if (orderDetail.getOrderId() == order.getId()) {
//            orderId = order.getId();
//            orderDetail.setOrderId(orderId);
//        }
//        List<OrderDetail> hi = oddao.findOrderId(orderDetail);
        List<OrderDetail> hi = oddao.findAll();
        session.setAttribute("detail", hi);
        
        
        request.getRequestDispatcher("../view/user/dashboard/userdashboard.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

   

}
