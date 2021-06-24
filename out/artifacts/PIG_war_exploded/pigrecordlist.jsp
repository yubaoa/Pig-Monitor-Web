<%--
  Created by IntelliJ IDEA.
  User: Hi
  Date: 2019/7/26
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>猪信息</title>

    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap-table.css"/>
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
                            <img alt="image" class="img-circle" src="img/profile_small.jpg" width="48px" height="48px" />
                             </span>
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
                    <a href="piginfv2.jsp"><i class="fa fa-pie-chart"></i> <span class="nav-label">Metrics</span>  </a>
                </li>
            </ul>

        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg">
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
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="col-*-12">
                <table id="mytab" class="table table-hover"></table>
            </div>
        </div>
    </div>

</div>
<!-- Mainly scripts -->
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<!-- Peity -->
<script src="js/plugins/peity/jquery.peity.min.js"></script>
<script src="js/demo/peity-demo.js"></script>
<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<%--<script src="js/plugins/pace/pace.min.js"></script>--%>
<script src="assets/js/jquery-3.4.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/bootstrap-table.js"></script>
<script src="assets/js/bootstrap-table-zh-CN.js"></script>
<script type="text/javascript">
    $(function() {
        $('#mytab').bootstrapTable({
            url:" http://localhost:8080/PIG/Pigrecord",//数据源
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
