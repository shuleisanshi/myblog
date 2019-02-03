<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

    <rapid:override name="title">
       - Menu list
    </rapid:override>

    <rapid:override name="header-style">
        <style>
            /*覆盖 layui*/
            .layui-input-block {
                margin:0px 10px;
            }
            .layui-table {
                margin-top: 0;
            }
            .layui-col-md4 {
                padding:10px;
            }
            .layui-col-md8 {
                padding:10px;
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
          <a><cite>Menu content list</cite></a>
        </span>
    </blockquote>

    <div class="layui-row">
        <div class="layui-col-md4">
            <form class="layui-form"  method="post" id="myForm" action="/admin/menu/insertSubmit">
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <strong>Add menu content</strong>
                    </div>
                    <div class="layui-input-block">
                        Name
                        <span style="color: #FF5722; ">*</span>
                        <input type="text" name="menuName" placeholder="Like：Message board" autocomplete="off" class="layui-input" required>
                    </div>
                    <br>
                    <div class="layui-input-block">
                        URL
                        <span style="color: #FF5722; ">*</span>
                        <input type="text" name="menuUrl" placeholder="Like：http://shulei.com/message.html" autocomplete="off" class="layui-input" >
                    </div>
                    <br>
                    <div class="layui-input-block">
                        Icon
                        <input type="text" name="menuIcon" placeholder="Like：fa fa-comment" autocomplete="off" class="layui-input" >
                    </div>
                    <br>
                    <div class="layui-input-block">
                        Menu addre
                        <select name="menuLevel" id="">
                            <option value="1" selected>Top menu</option>
                            <option value="2" >Main Menu</option>
                        </select>
                    </div>
                    <br>
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-filter="formDemo" type="submit">Add</button>
                    </div>
                </div>
            </form>

        </div>
        <div class="layui-col-md8">

            <div class="layui-tab layui-tab-card">
                <ul class="layui-tab-title">
                    <li class="layui-this">Top menu</li>
                    <li>Main menu</li>
                </ul>
                <div class="layui-tab-content" style="height: auto;">
                    <div class="layui-tab-item layui-show">

                        <table class="layui-table" >
                            <colgroup>
                                <col width="100">
                                <col width="200">
                                <col width="50">
                                <col width="100">
                                <col width="50">
                            </colgroup>
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>URL</th>
                                <th>Order</th>
                                <th>Operation</th>
                                <th>ID</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${menuList}" var="m">
                                <c:if test="${m.menuLevel == 1}">
                                <tr>
                                    <td>
                                        <i class="${m.menuIcon}"></i>
                                            ${m.menuName}
                                    </td>
                                    <td>
                                        <a href="${m.menuUrl}" target="_blank">${m.menuUrl}</a>
                                    </td>
                                    <td>${m.menuOrder}</td>
                                    <td>
                                        <a href="/admin/menu/edit/${m.menuId}" class="layui-btn layui-btn-mini" title="点击编辑">Edit</a>
                                        <a href="/admin/menu/delete/${m.menuId}" class="layui-btn layui-btn-danger layui-btn-mini" title="点击删除" onclick="return confirmDelete()">Delete</a>
                                    </td>
                                    <td >${m.menuId}</td>
                                </tr>
                                </c:if>
                            </c:forEach>
                            </tbody>
                        </table>

                    </div>
                    <div class="layui-tab-item">
                        <table class="layui-table" >
                            <colgroup>
                                <col width="100">
                                <col width="200">
                                <col width="50">
                                <col width="100">
                                <col width="50">
                            </colgroup>
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>URL</th>
                                <th>Order</th>
                                <th>Operation</th>
                                <th>ID</th>

                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${menuList}" var="m">
                                <c:if test="${m.menuLevel == 2}">
                                    <tr>
                                        <td>
                                            <i class="${m.menuIcon}"></i>
                                                ${m.menuName}
                                        </td>
                                        <td>
                                            <a href="${m.menuUrl}" target="_blank">${m.menuUrl}</a>
                                        </td>
                                        <td>${m.menuOrder}</td>
                                        <td>
                                            <a href="/admin/menu/edit/${m.menuId}" class="layui-btn layui-btn-mini">Edit</a>
                                            <a href="/admin/menu/delete/${m.menuId}" class="layui-btn layui-btn-danger layui-btn-mini" onclick="return confirmDelete()">Delete</a>
                                        </td>
                                        <td >${m.menuId}</td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                            </tbody>
                        </table>

                    </div>
                    <br><br><br>
                </div>
            </div>
        </div>
    </div>



</rapid:override>
<rapid:override name="footer-script">
    <script>

    </script>
</rapid:override>

<%@ include file="../public/framework.jsp"%>
