<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body background="../CCMS/image/Penguins.jpg">
  <form action="check.jsp">
用户账号： <input type="text" name="userId" size="15" /></td>
            
                <select name="birth">
                        <option name="birth" value="1990">1990</option>
                        <option name="birth" value="1991">1991</option>
                        <option name="birth" value="1992">1992</option>
                        <option name="birth" value="1993">1993</option>
                        <option name="birth" value="1994">1994</option>
                        <option name="birth" value="1995">1995</option>
                        <option name="birth" value="1996">1996</option>
                        <option name="birth" value="1997">1997</option>
                        <option name="birth" value="1998">1998</option>
                        <option name="birth" value="1999">1999</option>
                        <option name="birth" value="2000">2000</option>
                        <option name="birth" value="2001">2001</option>
                        <option name="birth" value="2002">2002</option>
                        <option name="birth" value="2003">2003</option>
                        <option name="birth" value="2004">2004</option>
                        <option name="birth" value="2005">2005</option>
                        <option name="birth" value="2006">2006</option>
                        <option name="birth" value="2007">2007</option>
                        <option name="birth" value="2008">2008</option>
                     </select>年
                     <select name="birth1">
                       <option name="birth1" value="01">01</option>
                       <option name="birth1" value="02">02</option>
                       <option name="birth1" value="03">03</option>
                       <option name="birth1" value="04">04</option>
                       <option name="birth1" value="05">05</option>
                       <option name="birth1" value="06">06</option>
                       <option name="birth1" value="07">07</option>
                       <option name="birth1" value="08">08</option>
                       <option name="birth1" value="09">09</option>
                       <option name="birth1" value="10">10</option>
                       <option name="birth1" value="11">11</option>
                       <option name="birth1" value="12">12</option>
                     </select>月
                     <select name="birth2">
                       <option name="birth2" value="01">01</option>
                       <option name="birth2" value="02">02</option>
                       <option name="birth2" value="03">03</option>
                       <option name="birth2" value="04">04</option>
                       <option name="birth2" value="05">05</option>
                       <option name="birth2" value="06">06</option>
                       <option name="birth2" value="07">07</option>
                       <option name="birth2" value="08">08</option>
                       <option name="birth2" value="09">09</option>
                       <option name="birth2" value="10">10</option>
                       <option name="birth2" value="11">11</option>
                       <option name="birth2" value="12">12</option>
                     </select>日
                     <input type="submit" value="查询">
                     </form>
  </body>
</html>
