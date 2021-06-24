<%@ page import="java.util.Map" %>
<%@ page import="com.alibaba.fastjson.JSONObject" %>
<%@ page import="com.alibaba.fastjson.JSONArray" %>
<%@ page import="com.alibaba.fastjson.serializer.SerializerFeature" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Hi
  Date: 2019/8/2
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>养猪</title>
    <link href="assets/css/toastr.min.css" rel="stylesheet">
    <link href="assets/css/chartist.min.css" rel="stylesheet">
    <link href="assets/css/buttons.css" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="assets/css/animate.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/c3.min.css" rel="stylesheet">
</head>
<body >
<div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="img/profile_small.jpg" width="48px" height="48px">
                             </span>
                    </div>
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
                <h2>猪舍编号:<%=request.getAttribute("houseid")%></h2>
            </div>
            <div class="col-lg-2">
            </div>
        </div>
        <div class="row1">
                <div class="col-lg-12">
                    <div class="float-e-margins">
                        <div id="chart1" class="ibox-content text-center h-200"></div>
                    </div>
                </div>
        </div>
        <div class="row1">
            <div class="col-lg-12">
                <div class="float-e-margins">
                    <div id="chart2" class="ibox-content text-center h-200"></div>
                </div>
            </div>
        </div>
        <div class="row1">
            <div class="col-lg-12">
                <div class="float-e-margins">
                    <div id="chart3" class="ibox-content text-center h-200"></div>
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
<script src="assets/js/chartist.min.js"></script>
<script src="assets/js/c3.min.js"></script>
<script src="assets/js/d3.min.js"></script>
<!-- Toastr script -->
<script src="js/echarts.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var illmulationay=[];
            var timeay=[];
            var smogay=[];
            var tempay=[];
            var houseid=<%=request.getAttribute("houseid")%>
             var url="http://localhost:8080/PIG/Housedetail?houseid="+houseid
                $.ajax({
                    type: "POST",
                    url:url,
                    data:{},
                    datatype:"html",
                    success:function(data){
                        var housedata=eval(data);

                        for(var i=0;i<housedata.length;i++) {
                            timeay.push(housedata[i].recordtime);
                            smogay.push(housedata[i].smog);
                            illmulationay.push(housedata[i].illumination);
                            tempay.push(housedata[i].temperature);
                        }
                        var myChart = echarts.init(document.getElementById('chart1'));// 指定图表的配置项和数据
                        var option = {
                            title: {
                                text: '烟雾浓度记录',
                                x:'center',
                            },
                            tooltip: {},
                            legend: {
                                data:['smog']
                            },
                            xAxis: {
                                type: 'category',
                                data:timeay,
                            },
                            yAxis: {},
                            series: [{
                                name: '烟雾浓度',
                                type:'line',
                                smooth: true,
                                data: smogay
                            }]
                        };
                        // 使用刚指定的配置项和数据显示图表。
                        myChart.setOption(option)
                        var myChart = echarts.init(document.getElementById('chart2'));// 指定图表的配置项和数据
                        var option = {
                            title: {
                                text: '温度记录',
                                x:'center',
                            },
                            tooltip: {},
                            legend: {
                                data:['temperature']
                            },
                            xAxis: {
                                data:timeay
                            },
                            yAxis: {},
                            series: [{
                                name: '温度',
                                type: 'line',
                                smooth: true,
                                data: tempay
                            }]
                        };
                        myChart.setOption(option)// 使用刚指定的配置项和数据显示图表。
                        var myChart = echarts.init(document.getElementById('chart3'));// 指定图表的配置项和数据
                        var option = {
                            title: {
                                text: '光照强度记录',
                                x:'center'
                            },
                            tooltip: {},
                            legend: {
                                data:['illumination']
                            },
                            xAxis: {
                                data:timeay
                            },
                            yAxis: {},
                            series: [{
                                name: '光照强度',
                                type: 'line',
                                smooth: true,
                                data:illmulationay
                            }]
                        };
                        myChart.setOption(option)// 使用刚指定的配置项和数据显示图表。
                    }
                });
            });

</script>
<%--<script >
    new Chartist.Line('#chart1', {
        labels: [1, 2, 3, 4, 5, 6, 7, 8],
        series: [
            [5, 9, 7, 8, 5, 3, 5, 4]
        ]
    }, {
        low: 0,
        showArea: true
    });
    option = {
        xAxis: {
            type: 'category',
            data: timeay
        },
        yAxis: {
            type: 'value'
        },
        series: [{
            data: smogay,
            type: 'line',
            smooth: true
        }]
    };

</script>--%>
</body>
</html>
