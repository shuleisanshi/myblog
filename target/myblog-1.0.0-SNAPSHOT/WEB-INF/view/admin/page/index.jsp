<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<rapid:override name="title">
    - Page list
</rapid:override>
<rapid:override name="header-style">
    <style>
    </style>
</rapid:override>

<rapid:override name="content">
    <blockquote class="layui-elem-quote">
        <span class="layui-breadcrumb" lay-separator="/">
          <a href="/admin">Homepage</a>
          <a><cite>Page list</cite></a>
        </span>
    </blockquote>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>Page list</legend>
    </fieldset>
    <form id="pageForm" method="post">
        <table class="layui-table">
            <colgroup>
                <col width="50">
                <col width="50">
                <col width="100">
                <col width="200">
                <col width="50">
                <col width="100">
            </colgroup>
            <thead>
            <tr>
                <th>ID</th>
                <th>Key</th>
                <th>Title</th>
                <th>Content</th>
                <th>Status</th>
                <th>Operation</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageList}" var="p">
                <c:if test="${p.pageStatus!=2}">
                    <tr>
                        <td>${p.pageId}</td>
                        <td>${p.pageKey}</td>
                        <td>
                            ${p.pageTitle}
                        </td>
                        <td>
                            <a href="/${p.pageKey}"
                               target="_blank">
                                    ${fn:substring(p.pageContent, 0,20 )}

                            </a>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${p.pageStatus==1}">
                                    Show
                                </c:when>
                                <c:otherwise>
                                    <span style="color: #FF5722;">
                                        Hide
                                    </span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <a href="/admin/page/edit/${p.pageId}"
                               class="layui-btn layui-btn-mini">Edit</a>
                            <a href="/admin/page/delete/${p.pageId}"
                               class="layui-btn layui-btn-danger layui-btn-mini" onclick="return confirmDelete()">Delete</a>
                        </td>
                    </tr>
                </c:if>
            </c:forEach>
            </tbody>
        </table>
    </form>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>Reserved page</legend>
    </fieldset>
    <div class="layui-form">
        <table class="layui-table" style="width: 40%;">
            <colgroup>
                <col width="150">
                <col width="150">
                <col width="200">
                <col>
            </colgroup>
            <thead>
            <tr>
                <th>Key</th>
                <th>Title</th>
                <th>Content</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach items="${pageList}" var="p">
                    <c:if test="${p.pageStatus==2}">
                        <tr>
                            <td>${p.pageKey}</td>
                            <td>${p.pageTitle}</td>
                            <td><a href="/${p.pageKey}" target="_blank">Clicking on view</a></td>
                        </tr>
                    </c:if>
                </c:forEach>
            </tbody>
        </table>
    </div>



</rapid:override>
<rapid:override name="footer-script">
    <script>


    </script>
</rapid:override>
<%@ include file="../public/framework.jsp" %>
