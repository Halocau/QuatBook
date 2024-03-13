/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import constant.commonConst;
import dal.AccountDAO2;
import dal.implement.AccountDao;
import dal.implement.RoleDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.awt.Robot;
import java.util.List;
import model.Account;
import model.Role;

/**
 *
 * @author Admin
 */
public class adminManagerUser extends HttpServlet {

    AccountDAO2 accountDao = new AccountDAO2();
    RoleDao roleDao = new RoleDao();

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
            out.println("<title>Servlet adminManagerUser</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet adminManagerUser at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();

        List<Account> user = (List<Account>) session.getAttribute("userne");
        if (user == null) {
            user = accountDao.loadAccountUser();
        }
        List<Role> role = roleDao.findAll();
        session.setAttribute(commonConst.SESSION_ROLE, role);
        session.setAttribute(commonConst.SESSION_USER, user);
        request.getRequestDispatcher("../view/admin/managerAccountUser.jsp").forward(request, response);
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
        List<Account> list = null;
        switch (action) {
            case "edit":
                list = editUserAccount(request, response);
                break;
            case "delete":
                list = deleteUserAccount(request, response);
                break;
            default:
                throw new AssertionError();
        }
        request.getSession().setAttribute("userne", list);
        response.sendRedirect("manageruser");
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

    private List<Account> deleteUserAccount(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Account account = new Account();
        account.setId(id);
        accountDao.delete(account);
        return accountDao.loadAccountUser();
    }

    private List<Account> editUserAccount(HttpServletRequest request, HttpServletResponse response) {
        
            String id = request.getParameter("id");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
        

            Account account = new Account();
            account.setId(Integer.parseInt(id));
            account.setUsername(username);
            account.setPassword(password);
            account.setEmail(email);
            account.setAddress(address);
       
            accountDao.editUserAccount(account);
    
        return accountDao.loadAccountUser();
    }

}
