package controller;

import bean.Pig;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import dao.PigDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "PiginfServlet")
public class PiginfServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PigDao pigDao=new PigDao();
        ArrayList<Pig> pigs=pigDao.getpigs();
        response.getWriter().write(JSON.toJSONString(pigs, SerializerFeature.DisableCircularReferenceDetect));
        response.getWriter().flush();
        request.setAttribute("pigs",pigs);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String id=request.getAttribute("houseid").toString();
//        if (id==null){
//      request.getRequestDispatcher("piginfv1.jsp").forward(request,response);
        PigDao pigDao=new PigDao();
        ArrayList<Pig> pigs=pigDao.getpigs();
        request.setAttribute("pigs",pigs);
        request.setAttribute("pigs",pigs);
        request.getRequestDispatcher("piginfv1.jsp").forward(request,response);
    }
}
