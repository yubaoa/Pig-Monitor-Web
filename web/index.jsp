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
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>猪群大健康管理</title>
    <link href="assets/css/toastr.min.css" rel="stylesheet">

    <link href="assets/css/buttons.css" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="assets/css/animate.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body class="pace-done">
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
                        <li id="piginfv2.jsp"><a href="piginfv2.jsp">表格模式</a></li>

                    </ul>
                </li>
            </ul>

        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg" style="min-height: 1935px;">
        <div class="row border-bottom border-bottom">
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
        <div class="row  border-bottom white-bg dashboard-header">
        <div class="row">
            <div class="col-lg-2">
                <div class="ibox float-e-margins">
                    <div class="ibox-title" align="center">
                        <div id="pigdiv">
                        <h3>猪群总数 </h3>
                            <span class="label label-success " id="pigsum"><%=request.getAttribute("pignum")%></span>
                        </div>
                        </div>
                    <div class="ibox-content" align="center" >
                        <img src="img/pigs1.png" width="150px" height="100px">
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="statistic-box">

                    <div class="row text-center">
                        <div id="status" style="width: 300px;height:200px;"></div>
                    </div>
                    <%--                    <div class="bg-primary p-xs b-r-sm"> Example text</div>--%>
                    <%--                    <div class="m-lg bg-muted p-xs">总数: <%=request.getAttribute("pignum")%></div>--%>

                </div>
            </div>
            <div class="col-md-3">
                <div class="statistic-box">

                    <div class="row text-center">
                        <div id="main" style="width: 300px;height:200px;"></div>
                    </div>
                    <%--                    <div class="bg-primary p-xs b-r-sm"> Example text</div>--%>
                    <%--<div class="m-lg bg-muted p-xs">总数: <%=request.getAttribute("pignum")%></div>--%>

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
<script src="js/plugins/chartJs/Chart.min.js"></script>
<!-- Toastr script -->
<script src="js/plugins/toastr/toastr.min.js"></script>
<script src="js/echarts.min.js"></script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    var Status=echarts.init(document.getElementById("status"));
    // 指定图表的配置项和数据
    var option = {
        title : {
            text: '性别分配情况',
            x:'center'
        },
        legend: {data:['','','公猪','母猪']},
        tooltip: {},
        dataset: {
            <% Map<String,String>num=(Map<String, String>) request.getAttribute("num");%>
            source: [
                ['公猪',<%=Integer.valueOf(num.get("公猪"))%>],
                ['母猪', <%=Integer.valueOf(num.get("母猪"))%>]
            ]
        },
        series: [{
            type: 'pie',
            radius: 40,
            center: ['60%', '60%']
            // No encode specified, by default, it is '2012'.
        }]
        ,
        color:['#36A2EB','pink']
    };
    var statusoption = {
        title : {
            text: '猪群状况',
            x:'center'
        },
        legend: {data:['','','良好','警告']},
        tooltip: {},
        dataset: {
            <% Map<String,String>statusnum=(Map<String, String>) request.getAttribute("pigstatus");%>
            source: [
                ['警告',<%=Integer.valueOf(statusnum.get("警告"))%>],
                ['良好', <%=Integer.valueOf(statusnum.get("良好"))%>]
                <%--, ['危险', <%=Integer.valueOf(num.get("母猪"))%>]--%>
            ]
        },
        series: [{
            type: 'pie',
            radius: 40,
            center: ['50%', '60%']
            // No encode specified, by default, it is '2012'.
        }]
        ,
        color:['orange','#66CD00']
    };
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
    Status.setOption(statusoption);
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