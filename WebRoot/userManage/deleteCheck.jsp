<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deleteCheck.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <%
     String userId=request.getParameter("userId");
     
      Connection con=null;
             Statement stmt=null;
             ResultSet rs=null;
             Class.forName("com.mysql.jdbc.Driver");
             String url="jdbc:mysql://localhost:3306/user";
             con=DriverManager.getConnection(url,"root","123456");
             stmt=con.createStatement();
             String sql="delete from userList where userId='"+userId+ "'";
             stmt.executeUpdate(sql);
             response.sendRedirect("http://localhost:8080/CCMS/userManage/userList.jsp");
             stmt.close();
             con.close();
    %>
  </body>
</html>
