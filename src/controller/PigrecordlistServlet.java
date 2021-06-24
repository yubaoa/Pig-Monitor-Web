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

@WebServlet(name = "PigrecordlistServlet")
public class PigrecordlistServlet extends HttpServlet {
    String pigid=null;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        System.out.println(pigid);
        PigDao pigDao=new PigDao();
        ArrayList<Pig> pigs=pigDao.getpigrecords(pigid);
        response.getWriter().write(JSON.toJSONString(pigs, SerializerFeature.DisableCircularReferenceDetect));
        response.getWriter().flush();
        response.getWriter().close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        pigid=request.getParameter("pigid");
        request.getRequestDispatcher("pigrecordlist.jsp").forward(request,response);
    }
}
