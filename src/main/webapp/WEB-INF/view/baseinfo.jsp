<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: jinshengkai
  Date: 2018/6/29
  Time: 下午7:30
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../css/bootstrap-datetimepicker.min.css" type="text/css">
</head>
<body>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Brand</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="#">Link</a>
                        </li>
                        <li>
                            <a href="#">Link</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Action</a>
                                </li>
                                <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">Separated link</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">One more separated link</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" />
                        </div> <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">Link</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Action</a>
                                </li>
                                <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">Separated link</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </nav>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-2 column">
            <div class="panel-group" id="panel-756248">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-756248" href="#panel-element-637712">Collapsible Group Item #1</a>
                    </div>
                    <div id="panel-element-637712" class="panel-collapse collapse">
                        <div class="panel-body">
                            Anim pariatur cliche...
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-756248" href="#panel-element-610293">Collapsible Group Item #2</a>
                    </div>
                    <div id="panel-element-610293" class="panel-collapse collapse">
                        <div class="panel-body">
                            Anim pariatur cliche...
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-10 column">
            <div class="row clearfix">
                <div class="col-md-2 column">
                    <div class="btn-group">
                        <button class="btn btn-default">Action</button>
                        <button data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">操作</a>
                            </li>
                            <li class="disabled">
                                <a href="#">另一操作</a>
                            </li>
                            <li class="divider">
                            </li>
                            <li>
                                <a href="#">其它</a>
                            </li>
                        </ul>
                    </div>
                </div>


            </div>
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <table class="table">
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
                                <td><c:out value="${baseinfo.bizDate}"/></td>
                                <td><c:out value="${baseinfo.taskCount}"/></td>
                                <td><c:out value="${baseinfo.statusNotRunning}"/></td>
                                <td><c:out value="${baseinfo.statusWaiting}"/></td>
                                <td><c:out value="${baseinfo.statusWaitingResource}"/></td>
                                <td><c:out value="${baseinfo.statusRunning}"/></td>
                                <td><c:out value="${baseinfo.statusFailed}"/></td>
                                <td><c:out value="${baseinfo.statusSucceed}"/></td>
                                <td><c:out value="${baseinfo.taskBegin}"/></td>
                                <td><c:out value="${baseinfo.taskFinished}"/></td>
                                <td><c:out value="${baseinfo.taskWorkingTime}"/></td>
                            </tr>
                        </c:forEach>



                        </tbody>
                    </table>
                    <div class="row clearfix">
                        <div class="col-md-12 column" style="text-align: right">
                            <ul class="pagination">
                                <li>
                                    <a href="#">Prev</a>
                                </li>
                                <li>
                                    <a href="#">1</a>
                                </li>
                                <li>
                                    <a href="#">2</a>
                                </li>
                                <li>
                                    <a href="#">3</a>
                                </li>
                                <li>
                                    <a href="#">4</a>
                                </li>
                                <li>
                                    <a href="#">5</a>
                                </li>
                                <li>
                                    <a href="#">Next</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/search.js"></script>
<script src="../js/moment-with-locales.min.js"></script>
<script src="../js/bootstrap-datetimepicker.min.js"></script>
</html>
