<%--
  Created by IntelliJ IDEA.
  User: Hi
  Date: 2019/7/20
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="bean.PigHouse" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.Pig" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>养猪</title>
    <link href="assets/css/toastr.min.css" rel="stylesheet">

    <link href="assets/css/buttons.css" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="assets/css/animate.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
</head>

<body class="pace-done"><div class="pace  pace-inactive">
    <div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
    <div class="pace-progress-inner"></div>
</div>
    <div class="pace-activity"></div></div>

<div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                           <img alt="image" class="img-circle" src="img/profile_small.jpg" width="48px" height="48px">
                             </span>

                    </div>
                    <strong class="font-bold"></strong>
                </li>
                <li id="Index" class="">
                    <a href="Index"><i class="fa fa-th-large"></i> <span class="nav-label">首页</span> </a>

                </li>
                <li id="House">
                    <a href="House"><i class="fa fa-diamond"></i> <span class="nav-label">猪棚信息</span></a>
                </li>
                <li class="" id="piginfs" >
                    <a href="#"><i class="fa fa-picture-o"></i> <span class="nav-label">猪信息</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse" style="height: 0px;">
                        <li id="Piginf"><a href="Piginf">图形模式</a></li>
                        <li id="piginfv2.jsp" class=""><a href="piginfv2.jsp">表格模式</a></li>

                    </ul>
                </li>
            </ul>

        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg" style="min-height: 1935px;">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>

                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <span class="m-r-sm text-muted welcome-message"></span>
                    </li>
                    <li>
                        <a href="Login">
                            <i class="fa fa-sign-out"></i> 退出
                        </a>
                    </li>
                </ul>

            </nav>
        </div>
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2 >猪列表</h2>
                <%--                <ol class="breadcrumb">--%>
                <%--                    <li>--%>
                <%--                        <a href="index.html">Home</a>--%>
                <%--                    </li>--%>

                <%--                </ol>--%>
            </div>
            <div class="col-lg-2">

            </div>
        </div>
        <div class="wrapper wrapper-content animated fadeIn">
            <%
                List<Pig> pigist=(ArrayList<Pig>)request.getAttribute("pigs");
                int pigsize=pigist.size();
                int last=pigsize-1;
                int count=pigsize-pigsize%2,j;
                for(int i=0;i<count;i+=2)
                {   j=i+1;
            %>
            <div class="row">
               <div class="col-lg-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">

                            <label class="label1"></label>
                            <span class="badge badge-success"></span>
                            <% String s=pigist.get(i).getPigid();{%><button class="button button--winona button--border-thin button--round-s" data-text="详细信息" onclick="javascrtpt:window.location.href='/PIG/Pigrecord?pigid=<%=s%>'" id="btn<%=s%>" value="<%=s%>"><span><img src="img/pig.png" width="25px" height="25px">猪编号 :<%=s%><%}%></span></button>
                            <label class="btn btn-w-m btn-" id="btn"></label>
                            <label class="bg-success p-xs b-r-sm"> 状态<%=pigist.get(i).getStatus()%></label>

                            <div class="ibox-tools">

                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content" style="display:none;">
                            <div class="row">
                                <div class="col-lg-2">
                                    <div class="ibox">
                                        <div class="form-group">

                                            <h2 class="text-navy">
                                                <img src="img/weight.png" width="100px" height="100px">
                                            </h2>
                                            <small>体重<%=pigist.get(i).getWeight()%>KG</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="ibox">
                                        <div class="form-group ">

                                            <h2 class="text-navy">
                                                <img src="img/temperature.png" width="100px" height="100px">
                                            </h2>
                                            <small>体温:<%=pigist.get(i).getBodytemperature()%>℃</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="ibox">
                                        <div class="form-group">

                                            <h2 class="text-navy">
                                                <img src="img/heartrate.png" width="100px" height="100px">
                                            </h2>
                                            <small>心率:<%=pigist.get(i).getHeartrate()%>BPM</small>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2">
                                    <div class="ibox">
                                        <div class="form-group">

                                            <h2 class="text-navy">
                                                <img src="img/age.png" width="100px" height="100px">
                                            </h2>
                                            <small>年龄:<%=pigist.get(i).getAge()%></small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="ibox">
                                        <div class="form-group">

                                            <h2 class="text-navy">
                                                <img src="img/time.png" width="100px" height="100px">
                                            </h2>
                                            <small>检测时间<br><%=pigist.get(i).getRecorddate()%></small>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
              </div>
                <div class="col-lg-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">

                            <label class="label1"></label>
                            <span class="badge badge-success"></span>
                            <%  s=pigist.get(j).getPigid();{%><button class="button button--winona button--border-thin button--round-s" data-text="详细信息" onclick="javascrtpt:window.location.href='/PIG/Pigrecord?pigid=<%=s%>'" id="btn<%=s%>" value="<%=s%>"><span><img src="img/pig.png" width="25px" height="25px">猪编号 :<%=s%><%}%></span></button>
                            <label class="btn btn-w-m btn-" id="btn"></label>
                            <label class="bg-success p-xs b-r-sm"> 状态<%=pigist.get(j).getStatus()%></label>

                            <div class="ibox-tools">

                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content" style="display:none;">
                            <div class="row">
                                <div class="col-lg-2">
                                    <div class="ibox">
                                        <div class="form-group">

                                            <h2 class="text-navy">
                                                <img src="img/weight.png" width="100px" height="100px">
                                            </h2>
                                            <small>体重<%=pigist.get(j).getWeight()%>KG</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="ibox">
                                        <div class="form-group ">

                                            <h2 class="text-navy">
                                                <img src="img/temperature.png" width="100px" height="100px">
                                            </h2>
                                            <small>体温:<%=pigist.get(j).getBodytemperature()%>℃</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="ibox">
                                        <div class="form-group">

                                            <h2 class="text-navy">
                                                <img src="img/heartrate.png" width="100px" height="100px">
                                            </h2>
                                            <small>心率:<%=pigist.get(j).getHeartrate()%>BPM</small>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2">
                                    <div class="ibox">
                                        <div class="form-group">

                                            <h2 class="text-navy">
                                                <img src="img/age.png" width="100px" height="100px">
                                            </h2>
                                            <small>年龄:<%=pigist.get(j).getAge()%></small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="ibox">
                                        <div class="form-group">

                                            <h2 class="text-navy">
                                                <img src="img/time.png" width="100px" height="100px">
                                            </h2>
                                            <small>检测时间<br><%=pigist.get(j).getRecorddate()%></small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
            <div class="row">
                <div class="col-lg-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">

                            <label class="label1"></label>
                            <span class="badge badge-success"></span>
                            <% String s=pigist.get(last).getPigid();{%><button class="button button--winona button--border-thin button--round-s" data-text="详细信息" onclick="javascrtpt:window.location.href='/PIG/Pigrecord?pigid=<%=s%>'" id="btn<%=s%>" value="<%=s%>"><span><img src="img/pig.png" width="25px" height="25px">猪编号 :<%=s%><%}%></span></button>
                            <label class="btn btn-w-m btn-" id="btn"></label>
                            <label class="bg-success p-xs b-r-sm"> 状态<%=pigist.get(last).getStatus()%></label>

                            <div class="ibox-tools">

                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content" style="display:none;">
                            <div class="row">
                                <div class="col-lg-2">
                                    <div class="ibox">
                                        <div class="form-group">

                                            <h2 class="text-navy">
                                                <img src="img/weight.png" width="100px" height="100px">
                                            </h2>
                                            <small>体重<%=pigist.get(last).getWeight()%>KG</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="ibox">
                                        <div class="form-group ">

                                            <h2 class="text-navy">
                                                <img src="img/temperature.png" width="100px" height="100px">
                                            </h2>
                                            <small>体温:<%=pigist.get(last).getBodytemperature()%>℃</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="ibox">
                                        <div class="form-group">

                                            <h2 class="text-navy">
                                                <img src="img/heartrate.png" width="100px" height="100px">
                                            </h2>
                                            <small>心率:<%=pigist.get(last).getHeartrate()%>BPM</small>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2">
                                    <div class="ibox">
                                        <div class="form-group">

                                            <h2 class="text-navy">
                                                <img src="img/age.png" width="100px" height="100px">
                                            </h2>
                                            <small>年龄:<%=pigist.get(last).getAge()%></small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="ibox">
                                        <div class="form-group">

                                            <h2 class="text-navy">
                                                <img src="img/time.png" width="100px" height="100px">
                                            </h2>
                                            <small>检测时间<br><%=pigist.get(last).getRecorddate()%></small>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>


<!-- Mainly scripts -->
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>

<!-- Toastr script -->
<script src="js/plugins/toastr/toastr.min.js"></script>
<script type="text/javascript">
var url = window.location.href;
var index = url.lastIndexOf("\/");
str = url.substring(index + 1,url.length);
document.getElementById(str).className="active";
if (str==="Piginf"||str==="piginfv2.jsp")
{
document.getElementById("piginfs").className="active";
}
</script>
</body>
</html>