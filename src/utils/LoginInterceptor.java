package utils;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor{
    public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
            throws Exception {
        // TODO Auto-generated method stub
    }

    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
            throws Exception {
        // TODO Auto-generated method stub
    }

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
        // TODO Auto-generated method stub
        HttpSession session = request.getSession();
        try {
            //判断该session是否在线，若不在线则强制重定向到错误页面，若存在，则放过
            boolean Result=SessionListener.isOnline(session);
            if(Result==false){
                System.out.println("拦截后进入登录页面");
                String url=request.getContextPath()+"/Login";
                response.sendRedirect(url);
                return false;
            }else{
                return true;
            }
        } catch (Exception e) {
            String url=request.getContextPath()+"/error.jsp";
            response.sendRedirect(url);
            return false;
        }
    }
}