<%--
  Created by IntelliJ IDEA.
  User: Hi
  Date: 2019/7/26
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Dashboard v.2</title>

    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/bootstrap-table.css"/>
    <link href="../assets/css/animate.css" rel="stylesheet">
    <link href="../assets/css/style.css" rel="stylesheet">

</head>

<body class="pace-done">
<div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="../img/profile_small.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">David Williams</strong>
                             </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="profile.html">Profile</a></li>
                            <li><a href="contacts.html">Contacts</a></li>
                            <li><a href="mailbox.html">Mailbox</a></li>
                            <li class="divider"></li>
                            <li><a href="login.html">Logout</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li>
                    <a href="Index"><i class="fa fa-th-large"></i> <span class="nav-label">首页</span> <span class="fa arrow"></span></a>

                </li>
                <li>
                    <a href="House"><i class="fa fa-diamond"></i> <span class="nav-label">猪棚信息</span></a>
                </li>
                <li>
                    <a href="Piginf"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">猪信息</span><span class="fa arrow"></span></a>
                </li>
                <li class="active">
                    <a href="../piginfv2.jsp"><i class="fa fa-pie-chart"></i> <span class="nav-label">Metrics</span>  </a>
                </li>
            </ul>

        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                    <form role="search" class="navbar-form-custom" action="search_results.html">
                        <div class="form-group">
                            <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                        </div>
                    </form>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <span class="m-r-sm text-muted welcome-message">Welcome to INSPINIA+ Admin Theme.</span>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                            <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li>
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="../img/a7.jpg">
                                    </a>
                                    <div>
                                        <small class="pull-right">46h ago</small>
                                        <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                        <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="../img/a4.jpg">
                                    </a>
                                    <div>
                                        <small class="pull-right text-navy">5h ago</small>
                                        <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                        <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="../img/profile.jpg">
                                    </a>
                                    <div>
                                        <small class="pull-right">23h ago</small>
                                        <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                        <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="text-center link-block">
                                    <a href="mailbox.html">
                                        <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="mailbox.html">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="profile.html">
                                    <div>
                                        <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                        <span class="pull-right text-muted small">12 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="grid_options.html">
                                    <div>
                                        <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="text-center link-block">
                                    <a href="notifications.html">
                                        <strong>See All Alerts</strong>
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>


                    <li>
                        <a href="login.html">
                            <i class="fa fa-sign-out"></i> Log out
                        </a>
                    </li>
                </ul>

            </nav>
        </div>
        <div class="wrapper wrapper-content animated fadeInRight">

            <div class="col-*-12">
                <table id="mytab" class="table table-hover"></table>
            </div>
        </div>
        <div class="footer">
            <div class="pull-right">
                10GB of <strong>250GB</strong> Free.
            </div>
            <div>
                <strong>Copyright</strong> Example Company &copy; 2014-2017
            </div>
        </div>
    </div>

</div>



<!-- Mainly scripts -->

<script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>


<!-- Peity -->
<script src="../js/plugins/peity/jquery.peity.min.js"></script>
<script src="../js/demo/peity-demo.js"></script>

<!-- Custom and plugin javascript -->
<script src="../js/inspinia.js"></script>
<%--<script src="js/plugins/pace/pace.min.js"></script>--%>
<script src="../assets/js/jquery-3.4.1.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/bootstrap-table.js"></script>
<script src="../assets/js/bootstrap-table-zh-CN.js"></script>
<script type="text/javascript">
    $(function() {


        $('#mytab').bootstrapTable({
            url: "http://localhost:8080/PIG/Piginf",//数据源
            dataField: "rows",//服务端返回数据键值 就是说记录放的键值是rows，分页时使用总记录数的键值为total
            height: tableHeight(),//高度调整
            search: true,//是否搜索
            striped: true,
            pagination: true,//是否分页
            pageSize: 10,//单页记录数
            sidePagination: "client",//服务端分页
            pagination: true,
            pageList : [ 10, 20, 30, 50 ],
            contentType: "application/x-www-form-urlencoded",//请求数据内容格式 默认是 application/json 自己根据格式自行服务端处理
            dataType: "json",//期待返回数据类型
            method: "post",//请求方式
            searchAlign: "left",//查询框对齐方式
            queryParamsType: "limit",//查询参数组织方式
            queryParams: function getParams(params) {
                //params obj
                params.other = "otherInfo";
                return params;
            },
            searchOnEnterKey: false,//回车搜索
            showRefresh: true,//刷新按钮
            showColumns: true,//列选择按钮
            buttonsAlign: "left",//按钮对齐方式
            // toolbar: "#toolbar",//指定工具栏
            // toolbarAlign: "right",//工具栏对齐方式
            columns: [
                {
                    title: "全选",
                    field: "select",
                    checkbox: true,
                    width: 20,//宽度
                    align: "center",//水平
                    valign: "middle"//垂直
                },
                {
                    title: "ID",//标题
                    field: "pigid",//键名
                    sortable: true,//是否可排序
                    order: "desc"//默认排序方式
                },
                {
                    title: "体重",
                    field: "weight",
                    sortable: true,
                    titleTooltip: "this is 体重"
                },
                {
                    title: "体温",//标题
                    field: "bodytemperature",//键名
                    sortable: false,//是否可排序
                    order: "desc"//默认排序方式
                },
                {
                    title: "心率",//标题
                    field: "heartrate",//键名
                    sortable: false,//是否可排序
                    order: "desc"//默认排序方式
                },
                {
                    title: "年龄",//标题
                    field: "age",//键名
                    sortable: false,//是否可排序
                    order: "desc"//默认排序方式
                },


                {
                    title: "检测时间",
                    field: "recorddate",
                    sortable: true,
                    order: "desc"//默认排序方式
                }
            ],
            // onClickRow: function(row, $element) {
            //     //$element是当前tr的jquery对象
            //     $element.css("background-color", "green");
            // },//单击row事件
            locale: "zh-CN", //中文支持
            detailView: false, //是否显示详情折叠
            detailFormatter: function(index, row, element) {
                var html = '';
                $.each(row, function(key, val){
                    html += "<p>" + key + ":" + val +  "</p>"
                });
                return html;
            }
        });

        $("#addRecord").click(function(){
            alert("name:" + $("#name").val() + " age:" +$("#age").val());
        });
    })

    function tableHeight() {
        return $(window).height() - 50;
    }
    /**
     * 列的格式化函数 在数据从服务端返回装载前进行处理
     * @param  {[type]} value [description]
     * @param  {[type]} row   [description]
     * @param  {[type]} index [description]
     * @return {[type]}       [description]
     */
    function infoFormatter(value, row, index)
    {
        return "id:" + row.id + " name:" + row.name + " age:" + row.age;
    }
</script>
<style>
    #mytab tr:nth-child(even){
        background: bisque;
    }
    #mytab th{
    //background: blue;
    }
</style>

</body>
</html>

</body>
</html>
//Login
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Dashboard v.2</title>

    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="../assets/css/animate.css" rel="stylesheet">
    <link href="../assets/css/style.css" rel="stylesheet">

</head>

<body class="pace-done">
<div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="../img/profile_small.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">David Williams</strong>
                             </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="profile.html">Profile</a></li>
                            <li><a href="contacts.html">Contacts</a></li>
                            <li><a href="mailbox.html">Mailbox</a></li>
                            <li class="divider"></li>
                            <li><a href="login.html">Logout</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li>
                    <a href="Index"><i class="fa fa-th-large"></i> <span class="nav-label">首页</span> <span class="fa arrow"></span></a>

                </li>
                <li>
                    <a href="House"><i class="fa fa-diamond"></i> <span class="nav-label">猪棚信息</span></a>
                </li>
                <li>
                    <a href="Piginf"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">猪信息</span><span class="fa arrow"></span></a>
                </li>
                <li class="active">
                    <a href="../piginfv2.jsp"><i class="fa fa-pie-chart"></i> <span class="nav-label">Metrics</span>  </a>
                </li>
            </ul>

        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                    <form role="search" class="navbar-form-custom" action="search_results.html">
                        <div class="form-group">
                            <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                        </div>
                    </form>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <span class="m-r-sm text-muted welcome-message">Welcome to INSPINIA+ Admin Theme.</span>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                            <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li>
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="../img/a7.jpg">
                                    </a>
                                    <div class="media-body">
                                        <small class="pull-right">46h ago</small>
                                        <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                        <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="../img/a4.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <small class="pull-right text-navy">5h ago</small>
                                        <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                        <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="../img/profile.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <small class="pull-right">23h ago</small>
                                        <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                        <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="text-center link-block">
                                    <a href="mailbox.html">
                                        <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="mailbox.html">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="profile.html">
                                    <div>
                                        <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                        <span class="pull-right text-muted small">12 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="grid_options.html">
                                    <div>
                                        <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="text-center link-block">
                                    <a href="notifications.html">
                                        <strong>See All Alerts</strong>
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>


                    <li>
                        <a href="login.html">
                            <i class="fa fa-sign-out"></i> Log out
                        </a>
                    </li>
                    <li>
                        <a class="right-sidebar-toggle">
                            <i class="fa fa-tasks"></i>
                        </a>
                    </li>
                </ul>

            </nav>
        </div>
        <div class="row  border-bottom white-bg dashboard-header">

            <div class="col-md-3">
                <h2>Welcome Amelia</h2>
                <small>You have 42 messages and 6 notifications.</small>
                <ul class="list-group clear-list m-t">
                    <li class="list-group-item fist-item">
                                <span class="pull-right">
                                    09:00 pm
                                </span>
                        <span class="label label-success">1</span> Please contact me
                    </li>
                    <li class="list-group-item">
                                <span class="pull-right">
                                    10:16 am
                                </span>
                        <span class="label label-info">2</span> Sign a contract
                    </li>
                    <li class="list-group-item">
                                <span class="pull-right">
                                    08:22 pm
                                </span>
                        <span class="label label-primary">3</span> Open new shop
                    </li>
                    <li class="list-group-item">
                                <span class="pull-right">
                                    11:06 pm
                                </span>
                        <span class="label label-default">4</span> Call back to Sylvia
                    </li>
                    <li class="list-group-item">
                                <span class="pull-right">
                                    12:00 am
                                </span>
                        <span class="label label-primary">5</span> Write a letter to Sandra
                    </li>
                </ul>
            </div>
            <div class="col-md-6">
                <div class="flot-chart dashboard-chart">
                    <div class="flot-chart-content" id="flot-dashboard-chart" style="padding: 0px; position: relative;"><canvas class="flot-base" width="631" height="180" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 631.5px; height: 180px;"></canvas><div class="flot-text" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);"><div class="flot-x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px;"><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 70px; top: 162px; left: 17px; text-align: center;">0</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 70px; top: 162px; left: 92px; text-align: center;">2</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 70px; top: 162px; left: 168px; text-align: center;">4</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 70px; top: 162px; left: 243px; text-align: center;">6</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 70px; top: 162px; left: 319px; text-align: center;">8</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 70px; top: 162px; left: 391px; text-align: center;">10</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 70px; top: 162px; left: 467px; text-align: center;">12</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 70px; top: 162px; left: 542px; text-align: center;">14</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 70px; top: 162px; left: 618px; text-align: center;">16</div></div><div class="flot-y-axis flot-y1-axis yAxis y1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px;"><div class="flot-tick-label tickLabel" style="position: absolute; top: 149px; left: 8px; text-align: right;">0</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 112px; left: 1px; text-align: right;">10</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 75px; left: 1px; text-align: right;">20</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 38px; left: 1px; text-align: right;">30</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 1px; left: 1px; text-align: right;">40</div></div></div><canvas class="flot-overlay" width="631" height="180" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 631.5px; height: 180px;"></canvas></div>
                </div>
                <div class="row text-left">
                    <div class="col-xs-4">
                        <div class=" m-l-md">
                            <span class="h4 font-bold m-t block">$ 406,100</span>
                            <small class="text-muted m-b block">Sales marketing report</small>
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <span class="h4 font-bold m-t block">$ 150,401</span>
                        <small class="text-muted m-b block">Annual sales revenue</small>
                    </div>
                    <div class="col-xs-4">
                        <span class="h4 font-bold m-t block">$ 16,822</span>
                        <small class="text-muted m-b block">Half-year revenue margin</small>
                    </div>

                </div>
            </div>
            <div class="col-md-3">
                <div class="statistic-box">
                    <h4>
                        Project Beta progress
                    </h4>
                    <p>
                        You have two project with not compleated task.
                    </p>
                    <div class="row text-center">
                        <div class="col-lg-6"><iframe class="chartjs-hidden-iframe" style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
                            <canvas id="doughnutChart2" width="80" height="80" style="margin: 18px auto 0px; display: block; width: 80px; height: 80px;"></canvas>
                            <h5>Kolter</h5>
                        </div>
                        <div class="col-lg-6"><iframe class="chartjs-hidden-iframe" style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
                            <canvas id="doughnutChart" width="80" height="80" style="margin: 18px auto 0px; display: block; width: 80px; height: 80px;"></canvas>
                            <h5>Maxtor</h5>
                        </div>
                    </div>
                    <div class="m-t">
                        <small>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</small>
                    </div>

                </div>
            </div>

        </div>
        <div class="wrapper wrapper-content animated fadeInRight">

            <div class="row">
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5 class="m-b-md">温度</h5>
                            <h2 class="text-navy">
                                <img src="../img/temperature.png" width="100px" height="100px">
                            </h2>
                            <small>检测时间</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content ">
                            <h5 class="m-b-md">湿度</h5>
                            <h2 class="text-navy">
                                <img src="../img/humidity.png" width="100px" height="100px">
                            </h2>
                            <small class="fa-font">检测时间</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5 class="m-b-md">光线强度</h5>
                            <h2 class="text-navy">
                                <img src="../img/illumination.png" width="100px" height="100px">
                            </h2>
                            <small>检测时间</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5 class="m-b-md">烟雾报警</h5>
                            <h2 class="text-danger">
                                <img src="../img/smokedetection.png" width="100px" height="100px">
                            </h2>
                            <small>Server down since 4:32 pm.</small>
                        </div>
                    </div>
                </div>


                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content ">
                            <h5 class="m-b-md">Server status Q13</h5>
                            <h2 class="text-navy">
                                <i class="fa fa-play fa-rotate-270"></i> Up
                            </h2>
                            <small>Last down 42 days ago</small>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5 class="m-b-md">Server status Q43</h5>
                            <h2 class="text-danger">
                                <i class="fa fa-play fa-rotate-90"></i> Down
                            </h2>
                            <small>Server down since 4:32 pm.</small>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Visits in last 24h</h5>
                            <h2>198 009</h2>
                            <div id="sparkline1"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Visits week</h5>
                            <h2>65 000</h2>
                            <div id="sparkline2"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Last month</h5>
                            <h2>680 900</h2>
                            <div id="sparkline3"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Avarage time</h5>
                            <h2>00:06:40</h2>
                            <div id="sparkline4"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Usage</h5>
                            <h2>65%</h2>
                            <div class="progress progress-mini">
                                <div style="width: 68%;" class="progress-bar"></div>
                            </div>

                            <div class="m-t-sm small">Server down since 4:32 pm.</div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Usage</h5>
                            <h2>50%</h2>
                            <div class="progress progress-mini">
                                <div style="width: 78%;" class="progress-bar"></div>
                            </div>

                            <div class="m-t-sm small">Server down since 4:32 pm.</div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Usage</h5>
                            <h2>14%</h2>
                            <div class="progress progress-mini">
                                <div style="width: 38%;" class="progress-bar progress-bar-danger"></div>
                            </div>

                            <div class="m-t-sm small">Server down since 4:32 pm.</div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Usage</h5>
                            <h2>20%</h2>
                            <div class="progress progress-mini">
                                <div style="width: 28%;" class="progress-bar progress-bar-danger"></div>
                            </div>

                            <div class="m-t-sm small">Server down since 4:32 pm.</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Percentage distribution</h5>
                            <h2>42/20</h2>
                            <div class="text-center">
                                <div id="sparkline5"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Percentage division</h5>
                            <h2>100/54</h2>
                            <div class="text-center">
                                <div id="sparkline6"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Percentage distribution</h5>
                            <h2>685/211</h2>
                            <div class="text-center">
                                <div id="sparkline7"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Percentage division</h5>
                            <h2>240/32</h2>
                            <div class="text-center">
                                <div id="sparkline8"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Income</h5>
                            <h1 class="no-margins">886,200</h1>
                            <div class="stat-percent font-bold text-navy">98% <i class="fa fa-bolt"></i></div>
                            <small>Total income</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Income last month</h5>
                            <h1 class="no-margins">1 738,200</h1>
                            <div class="stat-percent font-bold text-navy">98% <i class="fa fa-bolt"></i></div>
                            <small>Total income</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Income last day</h5>
                            <h1 class="no-margins">-200,100</h1>
                            <div class="stat-percent font-bold text-danger">12% <i class="fa fa-level-down"></i></div>
                            <small>Total income</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Income all</h5>
                            <h1 class="no-margins">54,200</h1>
                            <div class="stat-percent font-bold text-danger">24% <i class="fa fa-level-down"></i></div>
                            <small>Total income</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>All new alerts</h5>
                            <table class="table table-stripped small m-t-md">
                                <tbody>
                                <tr>
                                    <td class="no-borders">
                                        <i class="fa fa-circle text-navy"></i>
                                    </td>
                                    <td  class="no-borders">
                                        Example element 1
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa fa-circle text-navy"></i>
                                    </td>
                                    <td>
                                        Example element 2
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa fa-circle text-navy"></i>
                                    </td>
                                    <td>
                                        Example element 3
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Alerts</h5>
                            <table class="table table-stripped small m-t-md">
                                <tbody>
                                <tr>
                                    <td class="no-borders">
                                        <i class="fa fa-circle text-navy"></i>
                                    </td>
                                    <td  class="no-borders">
                                        Example element 1
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa fa-circle text-navy"></i>
                                    </td>
                                    <td>
                                        Example element 2
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa fa-circle text-navy"></i>
                                    </td>
                                    <td>
                                        Example element 3
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>All messages</h5>
                            <table class="table table-stripped small m-t-md">
                                <tbody>
                                <tr>
                                    <td class="no-borders">
                                        <i class="fa fa-circle text-danger"></i>
                                    </td>
                                    <td  class="no-borders">
                                        Example element 1
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa fa-circle text-danger"></i>
                                    </td>
                                    <td>
                                        Example element 2
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa fa-circle text-danger"></i>
                                    </td>
                                    <td>
                                        Example element 3
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h5>Last notification</h5>
                            <table class="table table-stripped small m-t-md">
                                <tbody>
                                <tr>
                                    <td class="no-borders">
                                        <i class="fa fa-circle text-danger"></i>
                                    </td>
                                    <td  class="no-borders">
                                        Example element 1
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa fa-circle text-danger"></i>
                                    </td>
                                    <td>
                                        Example element 2
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa fa-circle text-danger"></i>
                                    </td>
                                    <td>
                                        Example element 3
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>



        </div>
        <div class="footer">
            <div class="pull-right">
                10GB of <strong>250GB</strong> Free.
            </div>
            <div>
                <strong>Copyright</strong> Example Company &copy; 2014-2017
            </div>
        </div>
    </div>

</div>

<!-- Mainly scripts -->
<script src="../js/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>


<!-- Peity -->
<script src="../js/plugins/peity/jquery.peity.min.js"></script>
<script src="../js/demo/peity-demo.js"></script>

<!-- Custom and plugin javascript -->
<script src="../js/inspinia.js"></script>
<%--<script src="js/plugins/pace/pace.min.js"></script>--%>

</body>
</html>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Bootstrap-Table</title>--%>
<%--    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>--%>
<%--    <link rel="stylesheet" href="assets/css/bootstrap-table.css"/>--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div>--%>
<%--    <div>--%>
<%--        <div class="col-*-12">--%>

<%--            <div id="toolbar">--%>
<%--                <div class="btn btn-primary" data-toggle="modal" data-target="#addModal">添加记录</div>--%>
<%--            </div>--%>

<%--            <table id="mytab" class="table table-hover"></table>--%>

<%--            <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-hidden="true">--%>
<%--                <div class="modal-dialog">--%>
<%--                    <div class="modal-content">--%>
<%--                        <div class="modal-header">--%>
<%--                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">--%>
<%--                                &times;--%>
<%--                            </button>--%>
<%--                            <h4 class="modal-title" id="myModalLabel">添加记录</h4>--%>
<%--                        </div>--%>
<%--                        <div class="modal-body">--%>
<%--                            <form role="form" action="javascript:void(0)">--%>
<%--                                <div class="form-group">--%>
<%--                                    <input type="text" class="form-control" id="name" placeholder="请输入名称">--%>
<%--                                </div>--%>
<%--                                <div class="form-group">--%>
<%--                                    <input type="text" class="form-control" id="age" placeholder="请输入年龄">--%>
<%--                                </div>--%>
<%--                            </form>--%>
<%--                        </div>--%>
<%--                        <div class="modal-footer">--%>
<%--                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>--%>
<%--                            <button type="button" class="btn btn-primary" id="addRecord">提交</button>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<script src="assets/js/jquery-3.4.1.min.js"></script>--%>
<%--<script src="assets/js/bootstrap.min.js"></script>--%>
<%--<script src="assets/js/bootstrap-table.js"></script>--%>
<%--<script src="assets/js/bootstrap-table-zh-CN.js"></script>--%>
<%--<script type="text/javascript">--%>
<%--    $(function() {--%>

<%--        $('#mytab').bootstrapTable('destroy');--%>
<%--        $('#mytab').bootstrapTable({--%>
<%--            url: "http://localhost:8080/PIG/Piginf",//数据源--%>
<%--            dataField: "rows",//服务端返回数据键值 就是说记录放的键值是rows，分页时使用总记录数的键值为total--%>
<%--            height: tableHeight(),//高度调整--%>
<%--            search: true,//是否搜索--%>
<%--            striped: true,--%>
<%--            pagination: true,//是否分页--%>
<%--            pageSize: 10,//单页记录数--%>
<%--            sidePagination: "client",//服务端分页--%>
<%--            pagination: true,--%>
<%--            pageList : [ 10, 20, 30, 50 ],--%>
<%--            contentType: "application/x-www-form-urlencoded",//请求数据内容格式 默认是 application/json 自己根据格式自行服务端处理--%>
<%--            dataType: "json",//期待返回数据类型--%>
<%--            method: "post",//请求方式--%>
<%--            searchAlign: "left",//查询框对齐方式--%>
<%--            queryParamsType: "limit",//查询参数组织方式--%>
<%--            queryParams: function getParams(params) {--%>
<%--                //params obj--%>
<%--                params.other = "otherInfo";--%>
<%--                return params;--%>
<%--            },--%>
<%--            searchOnEnterKey: false,//回车搜索--%>
<%--            showRefresh: true,//刷新按钮--%>
<%--            showColumns: true,//列选择按钮--%>
<%--            buttonsAlign: "left",//按钮对齐方式--%>
<%--            toolbar: "#toolbar",//指定工具栏--%>
<%--            toolbarAlign: "right",//工具栏对齐方式--%>
<%--            columns: [--%>
<%--                {--%>
<%--                    title: "全选",--%>
<%--                    field: "select",--%>
<%--                    checkbox: true,--%>
<%--                    width: 20,//宽度--%>
<%--                    align: "center",//水平--%>
<%--                    valign: "middle"//垂直--%>
<%--                },--%>
<%--                {--%>
<%--                    title: "ID",//标题--%>
<%--                    field: "pigid",//键名--%>
<%--                    sortable: true,//是否可排序--%>
<%--                    order: "desc"//默认排序方式--%>
<%--                },--%>
<%--                {--%>
<%--                    title: "体重",--%>
<%--                    field: "weight",--%>
<%--                    sortable: true,--%>
<%--                    titleTooltip: "this is 体重"--%>
<%--                },--%>
<%--                {--%>
<%--                    title: "体温",//标题--%>
<%--                    field: "bodytemperature",//键名--%>
<%--                    sortable: false,//是否可排序--%>
<%--                    order: "desc"//默认排序方式--%>
<%--                },--%>
<%--                {--%>
<%--                    title: "心率",//标题--%>
<%--                    field: "heartrate",//键名--%>
<%--                    sortable: false,//是否可排序--%>
<%--                    order: "desc"//默认排序方式--%>
<%--                },--%>
<%--                {--%>
<%--                    title: "年龄",//标题--%>
<%--                    field: "age",//键名--%>
<%--                    sortable: false,//是否可排序--%>
<%--                    order: "desc"//默认排序方式--%>
<%--                },--%>


<%--                {--%>
<%--                    title: "检测时间",--%>
<%--                    field: "recorddate",--%>
<%--                    sortable: true,--%>
<%--                    order: "desc"//默认排序方式--%>
<%--                }--%>
<%--            ],--%>
<%--            // onClickRow: function(row, $element) {--%>
<%--            //     //$element是当前tr的jquery对象--%>
<%--            //     $element.css("background-color", "green");--%>
<%--            // },//单击row事件--%>
<%--            locale: "zh-CN", //中文支持--%>
<%--            detailView: false, //是否显示详情折叠--%>
<%--            detailFormatter: function(index, row, element) {--%>
<%--                var html = '';--%>
<%--                $.each(row, function(key, val){--%>
<%--                    html += "<p>" + key + ":" + val +  "</p>"--%>
<%--                });--%>
<%--                return html;--%>
<%--            }--%>
<%--        });--%>

<%--        $("#addRecord").click(function(){--%>
<%--            alert("name:" + $("#name").val() + " age:" +$("#age").val());--%>
<%--        });--%>
<%--    })--%>

<%--    function tableHeight() {--%>
<%--        return $(window).height() - 50;--%>
<%--    }--%>
<%--    /**--%>
<%--     * 列的格式化函数 在数据从服务端返回装载前进行处理--%>
<%--     * @param  {[type]} value [description]--%>
<%--     * @param  {[type]} row   [description]--%>
<%--     * @param  {[type]} index [description]--%>
<%--     * @return {[type]}       [description]--%>
<%--     */--%>
<%--    function infoFormatter(value, row, index)--%>
<%--    {--%>
<%--        return "id:" + row.id + " name:" + row.name + " age:" + row.age;--%>
<%--    }--%>
<%--</script>--%>
<%--<style>--%>
<%--    #mytab tr:nth-child(even){--%>
<%--        background: bisque;--%>
<%--    }--%>
<%--    #mytab th{--%>
<%--    //background: blue;--%>
<%--    }--%>
<%--</style>--%>
<%--</body>--%>
<%--</html>--%>


