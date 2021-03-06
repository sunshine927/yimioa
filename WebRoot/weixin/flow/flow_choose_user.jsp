<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.redmoon.oa.android.Privilege"%>
<%@page import="cn.js.fan.util.ParamUtil"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	    <meta charset="utf-8">        
		<title>选择用户</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta name="viewport"
			content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="telephone=no" name="format-detection" />
		<link rel="stylesheet" href="../css/mui.css">
		<link rel="stylesheet" href="../css/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="../css/mui.picker.min.css" />
		<link href="../css/mui.indexedlist.css" rel="stylesheet" />
		<link rel="stylesheet" href="../css/at_flow.css" />
		<link rel="stylesheet" href="../css/my_dialog.css" />
	</head>
	<style>
.mui-input-row .input-icon {
	width: 50%;
	float: left;
}

.mui-input-row a {
	margin-right: 10px;
	float: right;
	text-align: left;
	line-height: 1.5;
}

.div_opinion {
	text-align: left;
}

.opinionContent {
	margin: 10px;
	width: 65%;
	float: right;
	font-weight: normal;
}

.opinionContent div {
	text-align: right;
}

.opinionContent div span {
	padding: 10px;
}

.opinionContent .content_h5 {
	color: #000;
	font-size: 17px;
}
</style>
	<body>
		<header class="mui-bar mui-bar-nav">
		<h1 class="mui-title">
			选择用户
		</h1>
		<a id='done'
			class="mui-btn mui-btn-link mui-pull-right mui-btn-blue mui-disabled">完成</a>
		</header>
		<div class="mui-content">
			<div id='list' class="mui-indexed-list">
				<div class="mui-indexed-list-search mui-input-row mui-search">
					<input type="search"
						class="mui-input-clear mui-indexed-list-search-input"
						placeholder="搜索姓名" />
				</div>
				<div class="mui-indexed-list-bar">
					<a>A</a>
					<a>B</a>
					<a>C</a>
					<a>D</a>
					<a>E</a>
					<a>F</a>
					<a>G</a>
					<a>H</a>
					<a>I</a>
					<a>J</a>
					<a>K</a>
					<a>L</a>
					<a>M</a>
					<a>N</a>
					<a>O</a>
					<a>P</a>
					<a>Q</a>
					<a>R</a>
					<a>S</a>
					<a>T</a>
					<a>U</a>
					<a>V</a>
					<a>W</a>
					<a>X</a>
					<a>Y</a>
					<a>Z</a>
				</div>
				<div class="mui-indexed-list-alert"></div>
				<div class="mui-indexed-list-inner">
					<div class="mui-indexed-list-empty-alert">
						没有数据
					</div>
					<ul class="mui-table-view">
					</ul>

				</div>
			</div>
		</div>

		<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
		<script src="../js/jq_mydialog.js"></script>
		<script type="text/javascript" src="../js/newPopup.js"></script>
		<script src="../js/macro/macro.js"></script>
		<script src="../js/macro/open_window_macro.js"></script>
		<script src="../js/mui.min.js"></script>
		<script src="../js/mui.user.indexedlist.js"></script>
		<script type="text/javascript" src="../js/mui.user.wx.js"></script>
		<%
			String chooseUsers = ParamUtil.getParam(request,"chooseUsers");
			boolean isAt = ParamUtil.getBoolean(request,"isAt",false);
			boolean isFree = ParamUtil.getBoolean(request, "isFree", false);
			String code = ParamUtil.get(request,"code");
			boolean isMulti = ParamUtil.getBoolean(request, "isMulti", false);
			String internalName = ParamUtil.get(request, "internalName");
		%>
		<script type="text/javascript" charset="utf-8">
		var list = document.getElementById('list');
		var header = document.querySelector('header.mui-bar');
		list.style.height = (document.body.offsetHeight - header.offsetHeight) + 'px';
		var op = {"chooseUsers":"<%=chooseUsers%>", "internalName":"<%=internalName%>", "isAt":<%=isAt%>, "code":'<%=code%>', "isMulti":"<%=isMulti%>", "isFree":<%=isFree%>};
	 	window.user = new mui.User(list,op);
		window.user.chooseUserInit();
	</script>
	</body>
</html>
