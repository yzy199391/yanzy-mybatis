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
<c:set var="user" value="${userDetail}"></c:set>
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <form class="form-horizontal" action="${pageContext.request.contextPath}/add/user">
            <div class="form-group">
                <label for="nickname" class="col-sm-2 control-label">用户账号</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="username" name="username" placeholder="请输入用户账号">
                </div>
            </div>
            <div class="form-group">
                <label for="userpass" class="col-sm-2 control-label">用户密码</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="userpass" name="userpass" placeholder="请输入用户密码">
                </div>
            </div>
            <div class="form-group">
                <label for="nickname" class="col-sm-2 control-label">昵称</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="nickname" name="nickname" placeholder="请输入用户昵称">
                </div>
            </div>
            <div class="form-group">
                <label for="age" class="col-sm-2 control-label">年龄</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="age" name="age" placeholder="请输入用户年龄">
                </div>
            </div>
            <div class="form-group">
                <label for="gender" class="col-sm-2 control-label">性别</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="gender" name="gender" placeholder="请输入用户性别">
                </div>
            </div>
            <div class="form-group">
                <label for="phone" class="col-sm-2 control-label">联系方式</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入联系方式">
                </div>
            </div>
            <div class="form-group">
                <label for="email" class="col-sm-2 control-label">邮箱</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="email" name="email" placeholder="请输入用户邮箱">
                </div>
            </div>
            <div class="form-group">
                <input type="submit" value="点击新增用户" class="btn btn-primary"/>
            </div>
        </form>
    </div>
</div>
</body>
</html>
