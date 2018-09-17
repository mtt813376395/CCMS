<%@ page language="java" import="java.util.*" import="java.sql.*"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addCheck.jsp' starting page</title>
    
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
      request.setCharacterEncoding("UTF-8");
      
       String priceName=request.getParameter("priceName");
       byte p[]=priceName.getBytes("ISO-8859-1");
       priceName=new String(p,"UTF-8");
       String mouthMoney=request.getParameter("mouthMoney");
       byte m[]=mouthMoney.getBytes("ISO-8859-1");
       mouthMoney=new String(m,"UTF-8");
       String hourMoney=request.getParameter("hourMoney");
       byte h[]=hourMoney.getBytes("ISO-8859-1");
       hourMoney=new String(h,"UTF-8");
       String priceDetail=request.getParameter("priceDetail");
       byte pd[]=priceDetail.getBytes("ISO-8859-1");
       priceDetail=new String(pd,"UTF-8");
       
        Connection con=null;
             Statement stmt=null;
             ResultSet rs=null;
             Class.forName("com.mysql.jdbc.Driver");
             String url="jdbc:mysql://localhost:3306/price?useUnicode=true&charcterEncoding=gbk";
             con=DriverManager.getConnection(url,"root","123456");
             stmt=con.createStatement();
             String sql="insert into pricingList values ('"+priceName+"','"+mouthMoney+"','"+hourMoney+"','"+priceDetail+"')";
             stmt.executeUpdate(sql);
             response.sendRedirect("http://localhost:8080/CCMS/pricingManage/pricingList.jsp");
             stmt.close();
             con.close();
     %>
  </body>
</html>
