<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

    <rapid:override name="title">
        - Add link
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
              <a href="/admin/link">Link list</a>
              <a><cite>Add link</cite></a>
        </span>
    </blockquote>
    <div class="layui-row">
        <div class="layui-col-md4">
            <form class="layui-form" method="post" id="myForm" action="/admin/link/insertSubmit">
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <strong>Edit link</strong>
                    </div>
                    <input type="hidden" name="linkId" value="">
                    <div class="layui-input-block">
                        Name <span style="color: #FF5722; ">*</span>
                        <input type="text" name="linkName" value="" autocomplete="off" class="layui-input" required>
                    </div>
                    <br>
                    <div class="layui-input-block">
                        URL <span style="color: #FF5722; ">*</span>
                        <input type="text" name="linkUrl" value="" autocomplete="off" class="layui-input" required>
                    </div>
                    <br>
                    <div class="layui-input-block">
                        Contact information
                        <input type="text" name="linkOwnerContact" value="" autocomplete="off" class="layui-input" >
                    </div>
                    <br>
                    <div class="layui-input-block">
                        Description
                        <input type="text" name="linkDescription" value="" autocomplete="off" class="layui-input" >
                    </div>

                    <br>
                    <div class="layui-input-block">
                         Order
                        <input type="number" name="linkOrder" value="" autocomplete="off" class="layui-input" min="0" max="10">
                    </div>
                    <br>
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-filter="formDemo" type="submit">Add</button>
                    </div>
                </div>
            </form>
            <blockquote class="layui-elem-quote layui-quote-nm">

            </blockquote>
        </div>
        <div class="layui-col-md8">
            <table class="layui-table" >
                <colgroup>
                    <col width="50">
                    <col width="300">
                    <col width="100">
                    <col width="50">
                    <col width="100">
                </colgroup>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>URL</th>
                    <th>Order</th>
                    <th>Operation</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${linkList}" var="l">

                    <tr>
                        <td>${l.linkId}</td>
                        <td>
                            ${l.linkName}
                        </td>
                        <td>
                             ${l.linkUrl}
                        </td>
                        <td>
                            ${l.linkOrder}
                        </td>
                        <td>
                            <a href="/admin/link/edit/${l.linkId}" class="layui-btn layui-btn-mini">Edit</a>
                            <a href="/admin/link/delete/${l.linkId}" class="layui-btn layui-btn-danger layui-btn-mini" onclick="return confirmDelete()">Delete</a>

                        </td>
                    </tr>

                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>






</rapid:override>
<rapid:override name="footer-script">
    <script>

    </script>
</rapid:override>

<%@ include file="../public/framework.jsp"%>
