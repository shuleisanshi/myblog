<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

<rapid:override name="header-style">
    <style>
        .entry-title {
            background: #f8f8f8;
        }
    </style>
    <link rel="stylesheet" href="/plugin/layui/css/layui.css">
</rapid:override>


<rapid:override name="breadcrumb">
    <%--面包屑导航 start--%>
    <nav class="breadcrumb">
        <a class="crumbs" href="/">
            <i class="fa fa-home"></i>Homepage
        </a>
        <i class="fa fa-angle-right"></i>
        Apply for friend chain
        <i class="fa fa-angle-right"></i>
        Texts
    </nav>
    <%--面包屑导航 end--%>
</rapid:override>


<rapid:override name="left">
    <%--博客主体-左侧文章正文 start--%>
    <div id="primary" class="content-area">
        <main id="main" class="site-main" role="main">
            <article class="post" style="min-height: 500px;">
                <header class="entry-header">
                    <h1 class="entry-title">
                           Apply for friend chain
                    </h1>
                </header><!-- .entry-header -->
                <div class="entry-content">
                    <div class="single-content">
                        <form class="layui-form layui-form-pane" id="applyLinkForm"  method="post">
                            <div class="layui-form-item">
                                <label class="layui-form-label">Website</label>
                                <div class="layui-input-block">
                                    <input type="text" name="linkName"  placeholder="Like：${options.optionSiteTitle}" class="layui-input" required>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">Address</label>
                                <div class="layui-input-block">
                                    <input type="url" name="linkUrl"  placeholder="Like：www.google.com" class="layui-input" required>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">Description</label>
                                <div class="layui-input-block">
                                    <input type="text" name="linkDescription" placeholder="Like：${options.optionSiteDescrption}" class="layui-input" required>
                                </div>
                            </div>

                            <div class="layui-form-item layui-form-text">
                                <label class="layui-form-label">Remarks</label>
                                <div class="layui-input-block">
                                    <textarea placeholder="Reasons and connections" class="layui-textarea" name="linkOwnerContact" maxlength="100"></textarea>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <button class="layui-btn" lay-submit="">Submit</button>
                            </div>
                        </form>


                    </div>

                    <br><br>

                    <footer class="single-footer">
                        <ul class="single-meta">
                            <li class="r-hide">
                                <a href="javascript:pr()" title="侧边栏">
                                    <i class="fa fa-caret-left"></i>
                                    <i class="fa fa-caret-right"></i>
                                </a>
                            </li>
                        </ul>
                        <ul id="fontsize">
                            <li>A+</li>
                        </ul>
                    </footer><!-- .entry-footer -->


                    <div class="clear"></div>
                </div><!-- .entry-content -->
            </article><!-- #post -->



        </main>
        <!-- .site-main -->
    </div>
    <%--博客主体-左侧文章正文end--%>
</rapid:override>

<%--侧边栏 start--%>
<rapid:override name="right">
    <%@include file="../public/part/sidebar-3.jsp" %>
</rapid:override>
<%--侧边栏 end--%>

<rapid:override name="footer-script">
    <script>

    </script>
</rapid:override>

<%@ include file="../public/framework.jsp" %>