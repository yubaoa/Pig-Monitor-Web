package controller;

import dao.PigDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "IndexServlet")
public class IndexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(new PigDao().pigsexamount().get("母猪"));
        System.out.println(new PigDao().pigsexamount().get("公猪"));
        request.setAttribute("num",new PigDao().pigsexamount());
        request.setAttribute("pignum",new PigDao().getamount());
        request.setAttribute("pigstatus",new PigDao().pigstatus());
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
