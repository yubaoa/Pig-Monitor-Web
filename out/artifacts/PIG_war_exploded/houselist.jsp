<%@ page import="bean.PigHouse" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head>

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

<body class="pace-done"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
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
                <h2 >猪舍列表</h2>
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
            <% /*for (PigHouse house:(ArrayList<PigHouse>)request.getAttribute("houses")
                    ) {*/
                List<PigHouse>pigHouselist=(ArrayList<PigHouse>)request.getAttribute("houses");
                int size=pigHouselist.size();
                int last=size-1;
                int count=size-size%2,j;
                for(int i=0;i<count;i+=2)
                {   j=i+1;
            %>
            <div class="row">
                <div class="col-lg-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                                <label class="label1"></label>
                            <span class="badge badge-success"></span>
                            <% String s=pigHouselist.get(i).getHouseid();{%><button class="button button--winona button--border-thin button--round-s" data-text="详细信息" onclick="javascrtpt:window.location.href='/PIG/Housedetail?houseid=<%=s%>'" id="btn<%=s%>" value="<%=s%>"><span>猪舍编号 :<%=s%><%}%></span></button>
                            <label class="btn btn-w-m btn-" id="btn"></label>
                            <label class="bg-success p-xs b-r-sm"> 状态 正常<%%></label>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-down"></i>
                                </a>
<%--                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>--%>
                            </div>
                        </div>
                        <div class="ibox-content" style="display:none;">
                            <div class="row">
                                    <div class="col-lg-3">
                                        <div class="ibox">
                                            <div class="form-group">
                                                <h2 class="text-navy">
                                                    <img src="img/temperature.png" width="100px" height="100px">
                                                </h2>
                                                <small>温度<%=pigHouselist.get(i).getTemperature()%>℃</small>
                                            </div>
                                        </div>
                                    </div>
<%--                                    <div class="col-lg-3">
                                        <div class="ibox">
                                            <div class="form-group ">
                                                <h2 class="text-navy">
                                                    <img src="img/humidity.png" width="100px" height="100px">
                                                </h2>
                                                <small>湿度:<%=house.getHumidity()%>%RH</small>
                                            </div>
                                        </div>
                                    </div>--%>
                                    <div class="col-lg-3">
                                        <div class="ibox">
                                            <div class="form-group">
                                                <h2 class="text-navy">
                                                    <img src="img/illumination.png" width="100px" height="100px">
                                                </h2>
                                                <small>光线强度:<%=pigHouselist.get(i).getIllumination()%>lm</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="ibox">
                                            <div class="form-group">
                                                <h2 class="text-danger">
                                                    <img src="img/smokedetection.png" width="100px" height="100px">
                                                </h2>
                                                <small>烟雾数值:<%=pigHouselist.get(i).getSmog()%></small>
                                            </div>
                                        </div>
                                    </div>
                                <div class="col-lg-3">
                                    <div class="ibox">
                                        <div class="form-group ">
                                            <h2 class="text-navy">
                                                <img src="img/time.png" width="100px" height="100px">
                                            </h2>
                                            <small>检测时间<br><%=pigHouselist.get(i).getRecordtime()%></small>
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
                            <%  s=pigHouselist.get(j).getHouseid();{%><button class="button button--winona button--border-thin button--round-s" data-text="详细信息" onclick="javascrtpt:window.location.href='/PIG/Housedetail?houseid=<%=s%>'" id="btn<%=s%>" value="<%=s%>"><span>猪舍编号 :<%=s%><%}%></span></button>
                            <label class="btn btn-w-m btn-" id="btn"></label>
                            <label class="bg-success p-xs b-r-sm"> 状态 正常<%%></label>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-down"></i>
                                </a>
                                <%--                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                                                    <i class="fa fa-wrench"></i>
                                                                </a>
                                                                <a class="close-link">
                                                                    <i class="fa fa-times"></i>
                                                                </a>--%>
                            </div>
                        </div>
                        <div class="ibox-content" style="display:none;">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="ibox">
                                        <div class="form-group">
                                            <h2 class="text-navy">
                                                <img src="img/temperature.png" width="100px" height="100px">
                                            </h2>
                                            <small>温度<%=pigHouselist.get(j).getTemperature()%>℃</small>
                                        </div>
                                    </div>
                                </div>
                                <%--                                    <div class="col-lg-3">
                                                                        <div class="ibox">
                                                                            <div class="form-group ">
                                                                                <h2 class="text-navy">
                                                                                    <img src="img/humidity.png" width="100px" height="100px">
                                                                                </h2>
                                                                                <small>湿度:<%=house.getHumidity()%>%RH</small>
                                                                            </div>
                                                                        </div>
                                                                    </div>--%>
                                <div class="col-lg-3">
                                    <div class="ibox">
                                        <div class="form-group">
                                            <h2 class="text-navy">
                                                <img src="img/illumination.png" width="100px" height="100px">
                                            </h2>
                                            <small>光线强度:<%=pigHouselist.get(j).getIllumination()%>lm</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="ibox">
                                        <div class="form-group">
                                            <h2 class="text-danger">
                                                <img src="img/smokedetection.png" width="100px" height="100px">
                                            </h2>
                                            <small>烟雾数值:<%=pigHouselist.get(j).getSmog()%></small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="ibox">
                                        <div class="form-group ">
                                            <h2 class="text-navy">
                                                <img src="img/time.png" width="100px" height="100px">
                                            </h2>
                                            <small>检查时间<br>:<%=pigHouselist.get(j).getRecordtime()%></small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
            <% {%>
            <div class="row">
                <div class="col-lg-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <label class="label1"></label>
                        <span class="badge badge-success"></span>
                        <% String s=pigHouselist.get(last).getHouseid();{%><button class="button button--winona button--border-thin button--round-s" data-text="详细信息" onclick="javascrtpt:window.location.href='/PIG/Housedetail?houseid=<%=s%>'" id="btn<%=s%>" value="<%=s%>"><span>猪舍编号 :<%=s%><%}%></span></button>
                        <label class="btn btn-w-m btn-" id="btn"></label>
                        <label class="bg-success p-xs b-r-sm"> 状态 正常<%%></label>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-down"></i>
                            </a>
                            <%--                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                                                <i class="fa fa-wrench"></i>
                                                            </a>
                                                            <a class="close-link">
                                                                <i class="fa fa-times"></i>
                                                            </a>--%>
                        </div>
                    </div>
                    <div class="ibox-content" style="display:none;">
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="ibox">
                                    <div class="form-group">
                                        <h2 class="text-navy">
                                            <img src="img/temperature.png" width="100px" height="100px">
                                        </h2>
                                        <small>温度<%=pigHouselist.get(last).getTemperature()%>℃</small>
                                    </div>
                                </div>
                            </div>
                            <%--                                    <div class="col-lg-3">
                                                                    <div class="ibox">
                                                                        <div class="form-group ">
                                                                            <h2 class="text-navy">
                                                                                <img src="img/humidity.png" width="100px" height="100px">
                                                                            </h2>
                                                                            <small>湿度:<%=house.getHumidity()%>%RH</small>
                                                                        </div>
                                                                    </div>
                                                                </div>--%>
                            <div class="col-lg-3">
                                <div class="ibox">
                                    <div class="form-group">
                                        <h2 class="text-navy">
                                            <img src="img/illumination.png" width="100px" height="100px">
                                        </h2>
                                        <small>光线强度:<%=pigHouselist.get(last).getIllumination()%>lm</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="ibox">
                                    <div class="form-group">
                                        <h2 class="text-danger">
                                            <img src="img/smokedetection.png" width="100px" height="100px">
                                        </h2>
                                        <small>烟雾数值:<%=pigHouselist.get(last).getSmog()%></small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="ibox">
                                    <div class="form-group ">
                                        <h2 class="text-navy">
                                            <img src="img/time.png" width="100px" height="100px">
                                        </h2>
                                        <small>检查时间<br>:<%=pigHouselist.get(last).getRecordtime()%></small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <% }%>
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
</body></html>