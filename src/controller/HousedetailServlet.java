package controller;

import bean.Pig;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.microsoft.sqlserver.jdbc.SQLServerDataTable;
import dao.PighouseDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "HousedetailServlet")
public class HousedetailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String houseid=request.getParameter("houseid");
        response.getWriter().write(JSON.toJSONString(new PighouseDao().getdata(houseid), SerializerFeature.DisableCircularReferenceDetect));
        response.getWriter().flush();
        /*request.setAttribute("houseid",houseid);*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String houseid=request.getParameter("houseid");
        System.out.println(houseid);
        request.setAttribute("houseid",houseid);
        request.getRequestDispatcher("housedetail.jsp").forward(request,response);

    }
}
