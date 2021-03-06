/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Erick Goes
 */
@WebServlet(name = "MathServlet", urlPatterns = {"/calculator.poo"})
public class MathServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Calculadora</title>");            
            out.println("</head>");
            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"Styles.css\" media=\"screen\" />");
            out.println("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">");
            out.println("<body>");
            out.println("<ul class=\"topnav\">\n"
                    + "<li><a class=\"active\" href=\"index.html\">Inicio</a></li>\n"
                 // + "<li><a href=\"#news\">News</a></li>\n"
                 // + "<li><a href=\"#contact\">Contact</a></li>\n"
                    + "<li class=\"right\"><a href=\"erick.poo\">Sobre-Mim</a></li>\n"
                    + "</ul>");
            out.println("<div class=\"w3-container cont\">");
            out.println("<h1>Calculadora</h1>");
            out.println("<h2>Resultado</h2>");
            double n1, n2 = 0;
            String op = "";
            try {
                n1 = Double.parseDouble(request.getParameter("n1"));
                n2 = Double.parseDouble(request.getParameter("n2"));
                op = request.getParameter("op");
                if (op.equals("+")) {
                    out.println("<p>" + n1 + op + n2 + " = " + "<strong style='color:blue'>" + (n1 + n2) + "</strong>" + "</p>");
                } else if (op.equals("-")) {
                    out.println("<p>" + n1 + op + n2 + " = " + "<strong style='color:blue'>" + (n1 - n2) + "</strong>" + "</p>");
                } else if (op.equals("*")) {
                    out.println("<p>" + n1 + op + n2 + " = " + "<strong style='color:blue'>" + (n1 * n2) + "</strong>" + "</p>");
                } else if (op.equals("/")) {
                    out.println("<p>" + n1 + op + n2 + " = " + "<strong style='color:blue'>" + (n1 / n2) + "</strong>" + "</p>");
                } else {
                    out.println("<p style='color:red'>?? necess??rio que voc?? selecione uma opera????o. Clique em Voltar no menu.</p>"); 
                }
            } catch(Exception ex) {
                out.println("<p style='color:red'>Erro ao ler par??metros: " + ex.getMessage() + "</p>"); 
            }
            out.println("</div>");
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
        processRequest(request, response);
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
        processRequest(request, response);
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
