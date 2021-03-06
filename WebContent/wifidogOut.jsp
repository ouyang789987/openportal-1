<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String web=(String)session.getAttribute("web"); 
%> 
<html lang="zh-CN">
<head>
<base href="<%=basePath%>"/>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="OpenPortal,portal协议,wifi认证,Web认证,微信认证,华为,H3C,中兴,锐捷,ROS,爱快,Unifi,wifidog">
	<meta name="description" content="中国支持最全面的Portal协议 WIFI WEB认证 系统，支持 华为 H3C 中兴 锐捷 爱快 ROS UniFi OpenWrt wifidog 飞塔等设备，支持标准Portal协议、Portal V1 V2协议、CMCC协议、PAP CHAP认证方式。实现页面广告展示、一键认证、微信认证、公众号关注、短信认证、二维码认证、访客认证、用户密码认证,支持第三方Radius">
	<meta name="author" content="LeeSon,李硕">
	<title>OpenPortal网络接入认证专家</title>

	<!-- Bootstrap core CSS -->
	<link href="dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap theme -->
	<link href="dist/css/bootstrap-theme.min.css" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="dist/css/theme.css" rel="stylesheet">
	<script src="dist/js/jquery-1.11.1.min.js"></script>
	<script src="dist/js/bootstrap.min.js"></script>
	<script src="dist/js/site.js"></script>
	<script src="dist/js/wifidogAuth.js"></script>
	<script src="dist/js/encode.js"></script>
	<link rel="shortcut icon" href="customer/favicon.ico">
	<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
	<!--[if lt IE 9]>
	<script src="../../assets/js/ie8-responsive-file-warning.js"></script>
	<![endif]-->
	<!--
	<script src="../assets/js/ie-emulation-modes-warning.js"></script>
-->
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.js"></script>
<script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body role="document">
<form role="form">
<input type="hidden" name="web" id="web" value="<%=web%>" />
</form>
<div id="main" class="jumbotron masthead">
	<div class="container">
		<div class="container">
				<img  src="./dist/css/img/logo.png" style="height:100px;" alt="OpenPortal">
		</div>
		<h1>网络接入认证专家</h1>
		<h2>亲，欢迎您使用OpenPortal网络接入认证系统</h2>
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<h3>您已经成功下线！！</h3>
				<ul class="list-group">
					<li class="list-group-item"><a href="<%=path%>/message_sendUI.action" target="_blank">联系管理员</a></li>
					<li class="list-group-item"><a href="<%=path%>/customerLogin.action" target="_blank">用户自助中心</a></li>
					<li class="list-group-item"><a href="<%=path%>/homeAction/index.action" target="_blank">系统管理入口</a></li>
				</ul>
				
				<button id="closeMe" type="button" class="btn btn-danger btn-lg btn-block">关闭</button>
				<br>
			</div>
			
		</div>

	</div>
</div>
<div class="container theme-showcase" role="main">
	<div class="page-header text-center">
		<h4><a href="http://www.openportal.com.cn" target="_blank">Copyright © www.openportal.com.cn</a></h4>
	</div>
</div>
</body>
</html>