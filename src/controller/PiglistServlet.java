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

@WebServlet(name = "PiglistServlet")
public class PiglistServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PigDao pigDao=new PigDao();
        ArrayList<Pig> piglist=pigDao.getpiglist();
        response.getWriter().write(JSON.toJSONString(piglist, SerializerFeature.DisableCircularReferenceDetect));
        response.getWriter().flush();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PigDao pigDao=new PigDao();
        ArrayList<Pig> piglist=pigDao.getpiglist();
        for (Pig p:piglist
             ) {
            System.out.println(p.getPigid());
        }
        response.getWriter().write(JSON.toJSONString(piglist, SerializerFeature.DisableCircularReferenceDetect));
        response.getWriter().flush();
    }
}
