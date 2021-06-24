<%--
  Created by IntelliJ IDEA.
  User: Hi
  Date: 2019/7/17
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="assets/js/jquery-3.4.1.min.js" type="text/javascript"></script>
<link href="assets/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

<%--<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">--%>
<%--<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>--%>
<%--<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
<script src="assets/js/login.js" type="text/javascript"></script>
<link href="assets/css/login.css" rel="stylesheet">
<%--<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>--%>
<%--<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
<script type="text/javascript">
    //返回Ajax对象
    function getAjax() {
        if (XMLHttpRequest) {
            return new XMLHttpRequest();
        } else {
            return new ActiveXObject("Microsoft.XMLHTTP");
        }
    }

    function login() {
        //解决前台传值到后台为空
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        //1.拿到Ajax对象
        var xhr = getAjax();
        xhr.onreadystatechange = function s1(){

            if(xhr.readyState===4 )
            {
                if(xhr.status=== 200 ||xhr.status===0) {


                    var result = xhr.responseText;//返回的是一个字符串 "true"，"false"
                    if("用户不存在"===result){
                        document.getElementById('error').innerHTML = result;

                    }else if("用户名或密码错误"===result) {

                        document.getElementById('error').innerHTML = result;
                    }
                    else  if("登录成功"===result){
                         window.location.href ="Index";
                    }


                }}
        };
        //2.open：准备URL【解决参数传值问题】
        xhr.open("post","Login",false);
        //修改请求头(POST请求传参，必需加这一句，而且它的位置在open后面,send前面)
        xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        //3.监听对象状态变化，拿到返回数据

        //4.发送请求
        //如果是POST请求，在send方法中发送数据
        xhr.send("username="+username+"&password="+password);


    }

</script>
<!------ Include the above in your HEAD tag ---------->

<div class="limiter">
  <div class="container-login100">
    <div class="wrap-login100">
      <div class="login100-pic js-tilt" data-tilt>
        <img src="https://colorlib.com/etc/lf/Login_v1/images/img-01.png" alt="IMG">
      </div>

      <form class="login100-form validate-form" id="log_form">
					<span class="login100-form-title">
						登陆
                    </span>
          <div  class="login100-form-error" >
            <span id="error"></span>
<%--              <%String error=(String)request.getAttribute("error");--%>
<%--              if(error!=null&&!"".equals(error)){%><%=error%><%}%>&nbsp--%>
          </div>
        <div class="wrap-input100 validate-input" >
          <input class="input100" type="text" id="username" placeholder="用户名" onfocus="document.getElementById('error').innerText=null">
          <span class="focus-input100"></span>
          <span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
        </div>

        <div class="wrap-input100 validate-input" data-validate = "Password is required">
          <input class="input100" type="password" id="password" placeholder="密码" onfocus="document.getElementById('error').innerText=null">
          <span class="focus-input100"></span>
          <span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
        </div>
        <div class="container-login100-form-btn">
        <button   type="button" class="login100-form-btn" onclick="login()">登陆</button>

        </div>

        <div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
          <a class="txt2" href="#">
            Username / Password?
          </a>
        </div>

        <div class="text-center p-t-136">
          <a class="txt2" href="#">
            Create your Account
            <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
          </a>
        </div>
      </form>

    </div>
  </div>
</div>


