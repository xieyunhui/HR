<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>HR 控制台主页</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layuiadmin/style/admin.css" media="all">
</head>
<body>

<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md8">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-header">快捷方式</div>
                        <div class="layui-card-body">

                            <div class="layui-card">
                                <%--<div class="layui-card-header">今日考勤</div>--%>
                                <div class="layui-card-body">
                                    <button type="button" class="layui-btn layui-btn-lg layui-btn-radius layui-btn-warm">我要签到</button>
                                    <button type="button" class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal">我要签退</button>
                                </div>
                            </div>

                            <div class="layui-carousel layadmin-carousel layadmin-shortcut">
                                <div carousel-item>
                                    <ul class="layui-row layui-col-space10">
                                        <%--<li class="layui-col-xs3">--%>
                                        <%--<a lay-href="${ctx}/static/plugins/myPersonalProject/index.html"--%>
                                        <%--target="_blank">--%>
                                        <%--<i class="layui-icon layui-icon-console"></i>--%>
                                        <%--<cite>酷乐酱的个人主页</cite>--%>
                                        <%--</a>--%>
                                        <%--</li>--%>
                                        <li class="layui-col-xs3">
                                            <a lay-href="${ctx}/emp/list">
                                                <i class="layui-icon layui-icon-survey"></i>
                                                <cite>员工列表</cite>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs3">
                                            <a lay-href="${ctx}/dept/list">
                                                <i class="layui-icon layui-icon-survey"></i>
                                                <cite>部门列表</cite>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs3">
                                            <a lay-href="${ctx}/sys/userInfo">
                                                <i class="layui-icon layui-icon-user"></i>
                                                <cite>个人资料</cite>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs3">
                                            <a lay-href="${ctx}/sys/updatePwd">
                                                <i class="layui-icon layui-icon-set"></i>
                                                <cite>修改密码</cite>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs3">
                                            <a lay-href="${ctx}/modify/toModifyEmail.html">
                                                <i class="layui-icon layui-icon-set"></i>
                                                <cite>修改邮箱</cite>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs3">
                                            <a lay-href="${ctx}/main/toModifyEmp.html">
                                                <i class="layui-icon layui-icon-survey"></i>
                                                <cite>员工信息修改</cite>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs3">
                                            <a lay-href="${ctx}/main/toModifyDep.html">
                                                <i class="layui-icon layui-icon-survey"></i>
                                                <cite>部门信息修改</cite>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="layui-col-md4">
            <div class="layui-card">
                <div class="layui-card-header">版本信息</div>
                <div class="layui-card-body layui-text">
                    <table class="layui-table">
                        <colgroup>
                            <col width="100">
                            <col>
                        </colgroup>
                        <tbody>
                        <tr>
                            <td>当前版本</td>
                            <td>
                                SSM-hrm
                            </td>
                        </tr>
                        <tr>
                            <td>前端框架</td>
                            <td>
                                layui
                            </td>
                        </tr>
                        <tr>
                            <td>Ioc容器</td>
                            <td>
                                Spring
                            </td>
                        </tr>
                        <tr>
                            <td>Web框架</td>
                            <td>
                                SpringMVC
                            </td>
                        </tr>
                        <tr>
                            <td>ORM框架</td>
                            <td>
                                Mybatis
                            </td>
                        </tr>
                        <tr>
                            <td>安全框架</td>
                            <td>
                                Shiro
                            </td>
                        </tr>
                        <tr>
                            <td>数据库</td>
                            <td>
                                Oracle
                            </td>
                        </tr>
                        <tr>
                            <td>主要语言</td>
                            <td>
                                Java
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="layui-card">
                <div class="layui-card-header">
                    更新公告
                    <i class="layui-icon layui-icon-tips" lay-tips="注意查看哦" lay-offset="5"></i>
                </div>
                <div class="layui-card-body layui-text layadmin-text">
                    <p>功能介绍:</p>
                    <p>1.登录功能支持验证码验证以及登出功能</p>
                    <p>2.注册功能</p>
                    <p>3.密码找回功能:支持邮箱验证找回密码功能</p>
                    <p>4.登录拦截器</p>
                </div>
            </div>

        </div>

    </div>
</div>

<%--<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
<script type="text/javascript"
        src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
<script type="text/javascript"
        src="https://api.map.baidu.com/api?v=2.0&ak=HAyXKM0od6KqNdGCqwmx07WPm111ZF5B&__ec_v__=20190126"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>--%>

<script src="${ctx}/static/layuiadmin/layui/layui.js?t=1"></script>
<script>
    layui.config({
        base: '${ctx}/static/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'console', 'form'], function () {
        var $ = layui.$
            , form = layui.form;

    });

</script>
</body>
</html>