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
        <form class="form-horizontal">
            <div class="form-group">
                <label class="col-sm-2 control-label">用户账号</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${user.username}</p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">用户密码</label>
                <div class="col-sm-6">
                    <p class="form-control-static">*******</p>
                </div>
            </div>
            <div class="form-group">
                <label for="nickname" class="col-sm-2 control-label">昵称</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="nickname" name="nickname" value="${user.nickname}" placeholder="请输入用户昵称">
                </div>
            </div>
            <div class="form-group">
                <label for="age" class="col-sm-2 control-label">年龄</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="age" name="age" value="${user.age}" placeholder="请输入用户年龄">
                </div>
            </div>
            <div class="form-group">
                <label for="gender" class="col-sm-2 control-label">性别</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="gender" name="gender" value="${user.gender}" placeholder="请输入用户性别">
                </div>
            </div>
            <div class="form-group">
                <label for="phone" class="col-sm-2 control-label">联系方式</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="phone" name="phone" value="${user.phone}" placeholder="请输入联系方式">
                </div>
            </div>
            <div class="form-group">
                <label for="email" class="col-sm-2 control-label">邮箱</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="email" name="email" value="${user.email}" placeholder="请输入用户邮箱">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">创建时间</label>
                <div class="col-sm-6">
                    <p class="form-control-static">
                        <fmt:formatDate value="${user.createTime}" pattern="yyyy-MM-dd"/>
                    </p>
                </div>
            </div>
            <!--设置日期格式注意MM要大写-->
            <div class="form-group">
                <label class="col-sm-2 control-label">修改时间</label>
                <div class="col-sm-6">
                    <p class="form-control-static">
                        <fmt:formatDate value="${user.updateTime}" pattern="yyyy-MM-dd"/>
                    </p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">最后一次登录时间</label>
                <div class="col-sm-6">
                    <p class="form-control-static">
                        <fmt:formatDate value="${user.lastLogin}" pattern="yyyy-MM-dd"/>
                    </p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">用户状态</label>
                <div class="col-sm-6">
                    <c:if test="${user.userStatus == 0}">
                        <p class="form-control-static">正常</p>
                    </c:if>
                    <c:if test="${user.userStatus == 1}">
                        <p class="form-control-static">锁定</p>
                    </c:if>
                    <c:if test="${user.userStatus == 2}">
                        <p class="form-control-static">删除</p>
                    </c:if>
                </div>
            </div>
            <div class="form-group">
                <label for="remark" class="col-sm-2 control-label">备注</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="remark" name="remark" value="${user.remark}" placeholder="请输入备注">
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
