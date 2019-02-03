<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

    <rapid:override name="title">
        - User list
    </rapid:override>
<rapid:override name="header-style">
    <style>
        /*覆盖 layui*/

        .layui-table {
            margin-top: 0;
        }

        .layui-btn {
            margin: 2px 0!important;
        }
    </style>
</rapid:override>

<rapid:override name="content">
    <blockquote class="layui-elem-quote">
         <span class="layui-breadcrumb" lay-separator="/">
              <a href="/admin">Homepage</a>
              <a><cite>User list</cite></a>
        </span>
    </blockquote>

<table class="layui-table" lay-even lay-skin="nob" >
    <colgroup>
        <col width="100">
        <col width=100">
        <col width="100">
        <col width="50">
        <col width="50">
        <col width="100">
        <col width="50">
    </colgroup>
    <thead>
    <tr>
        <th>Username</th>
        <th>Nickname</th>
        <th>Email</th>
        <th>Article</th>
        <th>Status</th>
        <th>Operation</th>
        <th>ID</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${userList}" var="u">
        <tr>
            <td>
                 <img src="${u.userAvatar}" width="48" height="48">
                 <strong><a href="/admin/user/edit/${u.userId}">${u.userName}</a></strong>
            </td>
            <td>
                ${u.userNickname}
            </td>
            <td >
                ${u.userEmail}
            </td>
            <td>
                ${u.articleCount}
            </td>
            <td>
                <c:choose>
                    <c:when test="${u.userStatus==0}">
                        <span style="color:#FF5722;">Disable</span>
                    </c:when>
                    <c:otherwise>
                        Normal
                    </c:otherwise>
                </c:choose>
            </td>
            <td>
                <a href="/admin/user/edit/${u.userId}" class="layui-btn layui-btn-mini">Edit</a>
                <a href="/admin/user/delete/${u.userId}" class="layui-btn layui-btn-danger layui-btn-mini" onclick="return confirmDelete()">Delete</a>
            </td>
            <td>
                ${u.userId}
            </td>
        </tr>

    </c:forEach>
    </tbody>
</table>

</rapid:override>
<rapid:override name="footer-script">
    <script>

    </script>
</rapid:override>

<%@ include file="../public/framework.jsp"%>
