/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author Admin
 */
public class cartController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet cartController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cartController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/view/user/cart/cart.jsp").forward(request, response);
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
        String action = request.getParameter("action") == null
                ? "" : request.getParameter("action");
        switch (action) {
            case "add-product":
                addProduct(request, response);
                break;
            case "change-quantity":
                changeQuantity(request, response);
                break;
            case "delete":
                delete(request, response);
                break;
            default:
                throw new AssertionError();
        }
        response.sendRedirect("cart");
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

    private void addProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //get về session
        HttpSession session = request.getSession();
        //get về productID
        int id = Integer.parseInt(request.getParameter("id"));
        // get về quantity
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        // Lấy về cart ở trên session
        Order cart = (Order) session.getAttribute("cart");
        if (cart == null) {
            cart = new Order();
        }
        OrderDetail or = new OrderDetail();
        or.setProductId(id);
        or.setQuantity(quantity);

        //them orderdetail vao trong cart
        addOrderDetailCart(or, cart);
        session.setAttribute("cart", cart);
        
    }

    private void addOrderDetailCart(OrderDetail or, Order cart) {
        boolean productAdd = false;
        for (OrderDetail obj : cart.getListOrderDetail()) {
            if (obj.getProductId() == or.getProductId()) {
                obj.setQuantity(obj.getQuantity() + or.getQuantity());
                productAdd = true;
            }
        }
        if (productAdd == false) {
            cart.getListOrderDetail().add(or);
        }
    }

    private void changeQuantity(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        try {
            //get về productid
            int id = Integer.parseInt(request.getParameter("id"));
            //get về quantity
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            //lay về cart
            Order cart = (Order) session.getAttribute("cart");
            for (OrderDetail orderDetail : cart.getListOrderDetail()) {
                if(orderDetail.getProductId() == id){
                    // thay đổi  quantity
                    orderDetail.setQuantity(quantity);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        OrderDetail od = null;
        Order cart = (Order) session.getAttribute("cart");
        for (OrderDetail orderDetail : cart.getListOrderDetail()) {
            if(orderDetail.getProductId() == id){
                od = orderDetail;
            }
        }
        cart.getListOrderDetail().remove(od);
        session.setAttribute("cart",cart);
    }

}
