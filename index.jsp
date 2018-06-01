<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//WebRoot的网站根路径
	String rootPath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 首页 -->
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>蜜嫁</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <link rel="stylesheet" href="css/style.css">
  <script src="js/jquery.min.js"></script>
  <script type="text/javascript">
    function getPar(par){
        var local_url = document.location.href; 
        var get = local_url.indexOf(par +"=");
        if(get == -1){
            return false;   
        }   
        var get_par = local_url.slice(par.length + get + 1);    
        var nextPar = get_par.indexOf("&");
        if(nextPar != -1){
            get_par = get_par.slice(0, nextPar);
        }
        return get_par;
    }
    $(document).ready(function(){
      $("#zhuchebtn").click(function(){
        window.location.href="reg.jsp?generalize="+getPar("generalize");
      });
    });
  </script>
</head>
<body>
	<div class="index1">
		<div class="index1_1">
			<div class="index1_1_1"><img src="images/logo.png"></div>
			<div class="index1_1_2">蜜嫁</div>
			<div class="index1_1_3"><button id="zhuchebtn">注册</button></div>
		</div>
	</div>
</body>
</html>