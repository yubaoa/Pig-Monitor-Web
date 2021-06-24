package controller;

import bean.PigHouse;
import dao.PighouseDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "PighouseServlet")
public class PighouseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            PighouseDao pighouseDao=new PighouseDao();
            ArrayList<String>s=pighouseDao.gethouseid();
            ArrayList<PigHouse>houses=pighouseDao.gethouses(s);
//            for (PigHouse house:houses) {
//                System.out.println(house.getHouseid()+"  "+house.getRecordtime());
//            }
            request.setAttribute("houses",houses);
            request.getRequestDispatcher("houselist.jsp").forward(request,response);

    }
}
