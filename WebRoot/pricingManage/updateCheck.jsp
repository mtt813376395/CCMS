<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
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
     
       String priceName=new String(request.getParameter("priceName").getBytes("ISO-8859-1"),"utf-8");
      
       String mouthMoney=request.getParameter("mouthMoney");
      
       String hourMoney=request.getParameter("hourMoney");
      
       String priceDetail=new String(request.getParameter("priceDetail").getBytes("ISO-8859-1"),"utf-8");
      
       if(priceName.equals("")){
         response.sendRedirect("http://localhost:8080/CCMS/pricingManage/pricingList.jsp");
         }
         else{
                 	
             Connection con=null;
             Statement stmt=null;
             
             Class.forName("com.mysql.jdbc.Driver");
             String url="jdbc:mysql://localhost:3306/price?useUnicode=true&charcterEncoding=gbk";
             con=DriverManager.getConnection(url,"root","123456");
             stmt=con.createStatement();
            String sql=" update pricingList set priceName='"+priceName+"' ,mouthMoney='"+mouthMoney+"',hourMoney='"+hourMoney+"',priceDetail='"+priceDetail+"' where priceName='"+priceName+"'";
             System.out.println(priceName);
             stmt.executeUpdate(sql);
             System.out.println(mouthMoney);
             response.sendRedirect("http://localhost:8080/CCMS/pricingManage/pricingList.jsp");
                  stmt.close();
                  con.close();
                   }
       %>
  </body>
</html>
