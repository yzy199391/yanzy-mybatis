<%--
  Created by IntelliJ IDEA.
  User: xmly
  Date: 2018/9/10
  Time: 下午6:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>yzy-用户管理中心</title>
    <!--引入--bootstrap样式配置和jquery依赖-->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css"/>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="page-header">
            <h1>后台管理系统
                <small>用户数据管理中心</small>
            </h1>
        </div>
    </div>
</div>
<div class="container">
    <div class="jumbotron">
        <h1>mybatis-test</h1>
        <p>通过此项目，熟悉mybatis基础使用</p>
        <p>
            <a class="btn btn-primary btn-lg" href="https://github.com/yzy199391/yanzy-mybatis" role="button">详情</a>
        </p>
        <!--跳转到新增用户界面-->
        <p>
            <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/addUsers.jsp" role="button">新增用户</a>
        </p>
    </div>
</div>
<div class="row">
    <table class="table table-hover table-striped">
        <tr>
            <th>用户编号</th>
            <th>登录账号</th>
            <th>用户昵称</th>
            <th>邮箱</th>
            <th>联系方式</th>
            <th>账号创建时间</th>
            <th>用户状态</th>
            <th>操作</th>
        </tr>
        <c:forEach var="user" items="${usersList}">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.nickname}</td>
                <td>${user.email}</td>
                <td>${user.phone}</td>
                <td><fmt:formatDate value="${user.createTime}" pattern="yyyy-MM-dd"/></td>
                <c:if test="${user.userStatus == 0}">
                    <td>正常</td>
                </c:if>
                <c:if test="${user.userStatus == 1}">
                    <td>锁定</td>
                </c:if>
                <c:if test="${user.userStatus == 2}">
                    <td>删除</td>
                </c:if>
                <td>
                    <a href="${pageContext.request.contextPath}/detail?id=${user.id}">查看</a>
                    <a href="">修改</a>
                    <a href="">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>


