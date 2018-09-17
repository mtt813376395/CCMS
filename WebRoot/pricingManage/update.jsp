<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
 <body bgcolor="#CCCFFF">
    <br><br><br><br>
    <br><br><br><br>
    <br><br>
      <center>
      <form action="../CCMS/pricingManage/updateCheck.jsp" method="get">
              
          
            资费名称：<input type="text" name="priceName"/><br>
            月租费用：<input type="text" name="mouthMoney"/><br>
            小时费用：<input type="text" name="hourMoney"/><br>
            资费说明：<input type="text" name="priceDetail"/><br>
            
        <input type="submit" name="submit" value="修改"/>
       
          </form>
          </center>
  </body>
</html>
