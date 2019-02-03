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
    - Reply comment
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
              <a><cite>Comments Replying</cite></a>
        </span>
    </blockquote>

    <form class="layui-form"  method="post" id="myForm" action="/admin/comment/replySubmit">
        <input type="hidden" name="commentPid" value="${comment.commentId}">
        <input type="hidden" name="commentPname" value="${comment.commentAuthorName}">
        <input type="hidden" name="commentArticleId" value="${comment.commentArticleId}">
        <input type="hidden" name="commentRole" value="1">

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">Original content</label>
            <div class="layui-input-block">
                <textarea  class="layui-textarea" disabled>${comment.commentContent}</textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">My nickname </label>
            <div class="layui-input-block">
                <input type="text" name="commentAuthorName"  value="${sessionScope.user.getUserNickname()}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">My email </label>
            <div class="layui-input-block">
                <input type="text" name="commentAuthorEmail"  value="${sessionScope.user.getUserEmail()}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">My website </label>
            <div class="layui-input-block">
                <input type="text" name="commentAuthorUrl"  value="${sessionScope.user.getUserUrl()}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">My reply</label>
            <div class="layui-input-block">
                <textarea name="commentContent"  class="layui-textarea"></textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="demo1">Reply</button>
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
