package utils;

import javax.servlet.http.*;
import java.util.*;

public class SessionListener implements HttpSessionListener {
    private static HashMap usershashmap = new HashMap();
    //保存sessionID和username的映射
    /**以下是实现HttpSessionListener中的方法**/
    public void sessionCreated(HttpSessionEvent se){
    }

    public void sessionDestroyed(HttpSessionEvent se)  {
        System.out.println("销毁session");
        usershashmap.remove( se.getSession().getId() );
    }
    /*
     * isAlreadyEnter-用于判断用户是否已经登录以及相应的处理方法
     * @param sUserName String-登录的用户名称
     * @return boolean-该用户是否已经登录过的标志
     */
    public static boolean isAlreadyEnter(HttpSession session,String account){
        boolean flag = false;
        if(usershashmap.containsValue(account)){
            //如果该用户已经登录过，则使上次登录的用户掉线(依据使用户名是否在usershashmap中)
            flag = true;
            //遍历原来的usershashmap，删除原用户名对应的sessionID(即删除原来的sessionID和username)
            Iterator iter = usershashmap.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry entry = (Map.Entry)iter.next();
                Object key = entry.getKey();
                System.out.println(key);
                Object val = entry.getValue();
                if( ( (String)val ).equals(account) ){
                    usershashmap.remove(key);
                }
            }
            usershashmap.put( session.getId(),account );//添加现在的sessionID和username
            // System.out.println("该账号已登录"+"____________"+session.getId());
        }
        else{
            //如果该用户没登录过，直接添加现在的sessionID和username
            flag = false;
            // ((ActionContext) session).put(LOGIN_INFO, loginfo);
            usershashmap.put( session.getId(),account );
            // System.out.println("该账号未登录"+"____________"+session.getId());
            // System.out.println("usershashmap = " + usershashmap);
        }
        return flag;
    }
    /*
     * isOnline-用于判断用户是否在线
     * @param session HttpSession-登录的用户名称
     * @return boolean-该用户是否在线的标志
     */
    public static boolean isOnline(HttpSession session){
        boolean flag = true;
        if( usershashmap.containsKey( session.getId() ) ){
            flag = true;
        } else{
            flag = false;
        }
        return flag;
    }
}