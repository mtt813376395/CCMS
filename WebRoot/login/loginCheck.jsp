<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginCheck.jsp' starting page</title>
    
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

       String username=new String(request.getParameter("username").getBytes("ISO-8859-1"),"utf-8");
        
        String password=new String(request.getParameter("password").getBytes("ISO-8859-1"),"utf-8");
      
        Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        if(username.equals("") || password.equals("")){
           response.sendRedirect("http://localhost:8080/CCMS/login/login.jsp");
          
           }else{
               Class.forName("com.mysql.jdbc.Driver");
             String url="jdbc:mysql://localhost:3306/a?useUnicode=true&charcterEncoding=gbk";
              System.out.print("a");
             con=DriverManager.getConnection(url,"root","123456");
             
             stmt=con.createStatement();
             String sql="select * from userid where username='"+username+"'";
             rs=stmt.executeQuery(sql);
             
             if(rs.next()){
                String sql2="select * from userid where password='"+password+"'";
                rs=stmt.executeQuery(sql2);
                if(rs.next()){
                  response.sendRedirect("http://localhost:8080/CCMS/main/main.html");
                  }else{
                    response.sendRedirect("http://localhost:8080/CCMS/login/login.jsp");
                    }
                   }
                
                  if(rs!=null) rs.close();
                  if(stmt!=null) stmt.close();
                  if(con!=null) con.close();
             
             }
     %>
  </body>
</html>
