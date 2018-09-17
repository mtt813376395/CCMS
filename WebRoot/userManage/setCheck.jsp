<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'setCheck.jsp' starting page</title>
    
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
        
        String userId=request.getParameter("userId");
        byte ui[]=userId.getBytes("ISO-8859-1");
       userId=new String(ui,"UTF-8");
       String userPassword=request.getParameter("userPassword");
        byte up[]=userPassword.getBytes("ISO-8859-1");
       userPassword=new String(up,"UTF-8");
       
       String userName=request.getParameter("userName");
        byte un[]=userName.getBytes("ISO-8859-1");
       userName=new String(un,"UTF-8");
        
        String sex=request.getParameter("sex");
        byte s[]=sex.getBytes("ISO-8859-1");
       sex=new String(s,"UTF-8");
       String pay=request.getParameter("pay");
        byte p[]=pay.getBytes("ISO-8859-1");
       pay=new String(p,"UTF-8");
       String state=request.getParameter("state");
        byte st[]=state.getBytes("ISO-8859-1");
       state=new String(st,"UTF-8");
        
        String tel=request.getParameter("tel");
        byte t[]=tel.getBytes("ISO-8859-1");
       tel=new String(t,"UTF-8");
       String email=request.getParameter("email");
        byte e[]=email.getBytes("ISO-8859-1");
       email=new String(e,"UTF-8");
       
       String love=request.getParameter("love");
        byte l[]=love.getBytes("ISO-8859-1");
       love=new String(l,"UTF-8");
        String professional=request.getParameter("professional");
        byte pro[]=professional.getBytes("ISO-8859-1");
       professional=new String(pro,"UTF-8");
       String birth=request.getParameter("birth");
        byte b[]=birth.getBytes("ISO-8859-1");
       birth=new String(b,"UTF-8");
       String birth1=request.getParameter("birth1");
        byte b1[]=birth1.getBytes("ISO-8859-1");
       birth1=new String(b1,"UTF-8");
       String birth2=request.getParameter("birth2");
        byte b2[]=birth2.getBytes("ISO-8859-1");
       birth2=new String(b2,"UTF-8");
       String location=request.getParameter("location");
        byte lo[]=location.getBytes("ISO-8859-1");
       location=new String(lo,"UTF-8");
       
        Connection con=null;
             Statement stmt=null;
             ResultSet rs=null;
             Class.forName("com.mysql.jdbc.Driver");
             String url="jdbc:mysql://localhost:3306/user?useUnicode=true&charcterEncoding=gbk";
             con=DriverManager.getConnection(url,"root","123456");
             stmt=con.createStatement();
             String sql="insert into userList values ('"+userId+"','"+userPassword+"','"+userName+"','"+sex+"','"+pay+"','"+state+"','"+tel+"','"+email+"','"+love+"','"+professional+"','"+birth+birth1+birth2+"','"+location+"')";
             stmt.executeUpdate(sql);
             response.sendRedirect("http://localhost:8080/CCMS/userManage/userList.jsp");
             stmt.close();
             con.close();
     %>
  </body>
</html>
