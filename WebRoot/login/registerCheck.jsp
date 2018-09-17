<%@ page language="java" import="java.util.*"  import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'registerCheck.jsp' starting page</title>
    
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
        
        String username=request.getParameter("username");
       /*  byte ui[]=username.getBytes("ISO-8859-1");
       username=new String(ui,"UTF-8"); */
       String password=request.getParameter("password");
       /*  byte up[]=password.getBytes("ISO-8859-1");
       password=new String(up,"UTF-8"); */
        String password1=request.getParameter("password1");
       /*  byte up1[]=password1.getBytes("ISO-8859-1");
       password1=new String(up1,"UTF-8"); */
       
       String love=request.getParameter("love");
        /* byte un[]=love.getBytes("ISO-8859-1");
       love=new String(un,"UTF-8"); */
        
        String professional=request.getParameter("professional");
        /* byte s[]=professional.getBytes("ISO-8859-1");
       professional=new String(s,"UTF-8"); */
       String sex=request.getParameter("sex");
       /*  byte p[]=sex.getBytes("ISO-8859-1");
       sex=new String(p,"UTF-8"); */
       String email=request.getParameter("email");
        /* byte st[]=email.getBytes("ISO-8859-1");
       email=new String(st,"UTF-8"); */
        
        String birth=request.getParameter("birth");
       /*  byte t[]=birth.getBytes("ISO-8859-1");
       birth=new String(t,"UTF-8"); */
       String birth1=request.getParameter("birth1");
       /*  byte e[]=birth1.getBytes("ISO-8859-1");
       birth1=new String(e,"UTF-8"); */
        String birth2=request.getParameter("birth2");
       /*  byte b2[]=birth2.getBytes("ISO-8859-1");
       birth2=new String(b2,"UTF-8"); */
       
       String location=request.getParameter("location");
         byte l[]=location.getBytes("ISO-8859-1");
       location=new String(l,"UTF-8"); 
        
       
        Connection con=null;
             Statement stmt=null;
             ResultSet rs=null;
             Class.forName("com.mysql.jdbc.Driver");
             String url="jdbc:mysql://localhost:3306/a?useUnicode=true&charcterEncoding=gbk";
             con=DriverManager.getConnection(url,"root","123456");
             stmt=con.createStatement();
             String sql="insert into userId values ('"+username+"','"+password+"','"+love+"','"+professional+"','"+sex+"','"+email+"','"+birth+birth1+birth2+"','"+location+"')";
             stmt.executeUpdate(sql);
             response.sendRedirect("http://localhost:8080/CCMS/login/login.jsp");
             stmt.close();
             con.close();
     %>
  </body>
</html>
