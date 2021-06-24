/*package controller;
import bean.PigHouse;
import bean.Smogrcd;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import dao.PighouseDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

*//**
 * @ProjectName PigWeb
 * @ClassName PigHousedetailServlet
 * @Date 2020/6/26 15:15
 * @Author baojiaqi
 *//*
public class PigHousedetailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Smogrcd>smoglist=new PighouseDao().getsmoglist();
        response.getWriter().write(JSON.toJSONString(smoglist, SerializerFeature.DisableCircularReferenceDetect));
        response.getWriter().flush();

    }
}*/
