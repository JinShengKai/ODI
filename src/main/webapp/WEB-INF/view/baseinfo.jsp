<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: jinshengkai
  Date: 2018/6/29
  Time: 下午7:30
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">


    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/dashboard.css" rel="stylesheet">


</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">集成组日常运维工具</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Dashboard</a></li>
                <li><a href="#">Settings</a></li>
                <li><a href="#">Profile</a></li>
                <li><a href="#">Help</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="../baseinfo/base_Info">监控信息 <span class="sr-only">(current)</span></a></li>

            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="">Nav item</a></li>

            </ul>
            <ul class="nav nav-sidebar">

            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-information">日期查找</h1>

            <div class="row clearfix">

                <div class="col-md-6 column">

                    <form class="navbar-form navbar-left" role="search" action="../baseinfo/gmt_Info" method="post" name="find">
                        <div class="form-group">
                            <input type="text" name="gmtdate" class="form-control" />
                            <button type="submit" class="btn btn-default">查找</button>
                        </div>
                    </form>
                </div>

            </div>

            <h2 class="sub-header">任务作业监控</h2>
            <div class="table-responsive">
                <table class="table table-striped table-condensed">
                    <thead>
                    <tr>
                        <th>
                            单位名称
                        </th>
                        <th>
                            项目名称
                        </th>
                        <th>
                            业务日期
                        </th>
                        <th>
                            任务总数
                        </th>
                        <th>
                            未运行
                        </th>
                        <th>
                            等待时间
                        </th>
                        <th>
                            等待资源
                        </th>
                        <th>
                            运行中
                        </th>
                        <th>
                            失败
                        </th>
                        <th>
                            成功
                        </th>
                        <th>
                            项目下任务启动时间
                        </th>
                        <th>
                            项目下任务结束时间
                        </th>
                        <th>
                            任务运行时长
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="baseinfo" items="${baseInfoList}">
                        <tr>

                            <td><c:out value="${baseinfo.project}"/></td>
                            <td><c:out value="${baseinfo.name}"/></td>
                            <td><fmt:formatDate value="${baseinfo.bizDate}" pattern="yyyyMMdd"/> </td>
                            <td><c:out value="${baseinfo.taskCount}"/></td>
                            <td><c:out value="${baseinfo.statusNotRunning}"/></td>
                            <td><c:out value="${baseinfo.statusWaiting}"/></td>
                            <td><c:out value="${baseinfo.statusWaitingResource}"/></td>
                            <td><c:out value="${baseinfo.statusRunning}"/></td>
                            <td><c:out value="${baseinfo.statusFailed}"/></td>
                            <td><c:out value="${baseinfo.statusSucceed}"/></td>
                            <td><fmt:formatDate value="${baseinfo.taskBegin}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                            <td><fmt:formatDate value="${baseinfo.taskFinished}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                            <td><c:out value="${baseinfo.taskWorkingTime}"/></td>
                        </tr>
                    </c:forEach>



                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../js/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../js/jquery.min.js"><\/script>')</script>
<script src="../js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="../js/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
