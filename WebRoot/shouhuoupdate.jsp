<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物商城</title>

<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/webmain.css" rel="stylesheet" type="text/css" />
<link href="css/ddsmoothmenu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="scripts/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="scripts/jquery.KinSlideshow-1.2.1.js"></script>
<script type="text/javascript" src="scripts/webtry_roll.js"></script>
<script type="text/javascript" src="scripts/ddsmoothmenu.js"></script>
<script type="text/javascript">
ddsmoothmenu.init({
	mainmenuid: "MainMenu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})
</script>
</head>
<body>
<div id="wrapper">
    <div class="top">
    <span style="font-size: 50px;font-weight: bold;">
   购物商城
    </span>
    
    
  </div>
  
  <%@ include file="head.jsp" %>
  
  
  
  <div id="page_main" class="clearfix">
    <div class="page-right">
      <div class="site-nav"><span>当前位置 : </span><a href=".">网站主页</a> &gt;&gt; <a href="javascript:void(0)" >收货信息修改</a></div>
      <div class="page-guestbook">
<script type="text/javascript">
function check()
{
	
	if (document.getElementById('truenameid').value=="")
	{
		alert("收货人姓名不能为空");
		return false;
	}
	if (document.getElementById('addressid').value=="")
	{
		alert("收货地址不能为空");
		return false;
	}
	if (document.getElementById('phoneid').value=="")
	{
		alert("联系电话不能为空");
		return false;
	}
	
	valid=/^0?1[3,5,8][0,1,2,3,4,5,6,7,8,9]\d{8}$/;  
	if(!valid.test(document.getElementById('phoneid').value)){
		alert("请输入正确的联系电话格式");
		return false;
	}
	
	
	return true;
}
</script>
      <form method="post"  onSubmit="return check()" action="${url }">
      <dl class="clearfix">
      <dt>收货人姓名：</dt>
      <dd><input name="truename" type="text" id="truenameid"  value="${bean.truename }"/><span>*</span></dd>
      
    
      <dt>收货地址：</dt>
      <dd><input name="address" type="text" id="addressid" value="${bean.address }" /><span>*</span></dd>
      <dt>联系电话：</dt>
      <dd><input name="phone" type="text" id="phoneid" value="${bean.phone }" /><span>*</span></dd>
      
      
      
     
      </dl>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input src="images/submit.jpg" type="image"  ></input>
      <a href="javascript:void(0)" onclick="javascript:history.go(-1);" >
      <img src="images/fanhui.jpg"></img>
      </a>
      </form>
      </div>
    </div>
    <div class="page-left">
      
      
      <%@ include file="left.jsp" %>

    </div>
  </div>
    <%@ include file="bottom.jsp" %>
</div>
</body>
</html>
