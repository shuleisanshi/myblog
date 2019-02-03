<%@ page import="java.security.MessageDigest" %>
<%@ page import="java.security.NoSuchAlgorithmException" %>
<%@ page import="com.shulei.ssm.blog.util.MyUtils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

<rapid:override name="title">
    - Comments list
</rapid:override>
<rapid:override name="header-style">
    <style>
        /*覆盖 layui*/

        .layui-btn {
            margin: 2px 0 !important;
        }
    </style>
</rapid:override>

<rapid:override name="content">

    <blockquote class="layui-elem-quote">
        <span class="layui-breadcrumb" lay-separator="/">
              <a href="/admin">Homepage</a>
              <a href="/admin/comment">Comments list</a>
              <a><cite>Edit comment</cite></a>
        </span>
    </blockquote>

    <form class="layui-form"  method="post" id="myForm" action="/admin/comment/editSubmit">
        <input type="hidden" name="commentId" value="${comment.commentId}">
        <div class="layui-form-item">
            <label class="layui-form-label">Nickname </label>
            <div class="layui-input-block">
                <input type="text" name="commentAuthorName"  value="${comment.commentAuthorName}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">Email </label>
            <div class="layui-input-block">
                <input type="text" name="commentAuthorEmail"  value="${comment.commentAuthorEmail}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">Website </label>
            <div class="layui-input-block">
                <input type="text" name="commentAuthorUrl"  value="${comment.commentAuthorUrl}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">Content</label>
            <div class="layui-input-block">
                <textarea name="commentContent"  class="layui-textarea">${comment.commentContent}</textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="demo1">Save</button>
                <button type="reset" class="layui-btn layui-btn-primary" >Reset</button>
            </div>
        </div>

    </form>


</rapid:override>
<rapid:override name="footer-script">
    <script>

    </script>
</rapid:override>

<%@ include file="../public/framework.jsp" %>
