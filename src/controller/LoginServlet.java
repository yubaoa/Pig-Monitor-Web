package controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.sun.org.apache.bcel.internal.generic.RETURN;
import commport.PackageComm;
import dao.UserDao;
import utils.SessionListener;

import javax.servlet.http.HttpSession;

public class LoginServlet extends javax.servlet.http.HttpServlet {

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter pw = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username);
        UserDao userDao = new UserDao();
        int result = userDao.isValid(username, password);//验证用户名和密码
        if (result == 1) {
            request.getSession().setAttribute("username", username);
            final HttpSession session = request.getSession();
            //根据session，判断该是否登陆了，该session与电脑id有关
            // 会在 'public class SessionListener implements HttpSessionListener'中详细讲
            boolean Result = SessionListener.isOnline(session);
            System.out.println("是否在线" + Result);
            if (Result == false) {
                //用于判断用户是否已经登录以及相应的处理方法
                //如果该用户已经登录过，则使上次登录的用户掉线
                //如果该用户没登录过，直接添加现在的sessionID和account
                boolean istrue = SessionListener.isAlreadyEnter(session, username);
                final HttpSession Session = request.getSession();
                //将该查出的用户信息设置成session对象，并将该session对象的有效期设置成1个小时
                Session.setAttribute("user", username);
                Session.setMaxInactiveInterval(1 * 60 * 60);
                pw.write("登录成功");
            }
            else {
                //若该用户不在线，可能上session对象未销毁，则销毁sysuser对象，销毁session
                request.removeAttribute("user");
                request.getSession().invalidate();
                }

            } else if (result == 0) {
                pw.write("用户不存在");
            } else if (result == -1) {
                pw.write("用户名或密码错误");
            }
            pw.flush();
            pw.close();
        }
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }


}
