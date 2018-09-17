<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selectCheck.jsp' starting page</title>
    
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
       <form name="form1" method="get" action="userManage/selectCheck.jsp">
       <table width="1175" border="0" cellpadding="0" cellspacing="0" >
      <tr>
        <td width="176"><a href="../CCMS/userManage/setID.html" target="_self"> 开通账户</a></td>
        <td width="186"><a href="../CCMS/userManage/userList.jsp" target="_self">用户列表</a></td>
         <td width="176"><a href="../CCMS/userManage/delete.jsp" target="_self"> 删除用户</a></td>
        <td width="805">
            <div align="center">
              <font>服务账号</font>
              <input type="text" name="select" size="15" />
              <input type="submit" value="查询" />
              </div>
        </td>
      </tr>
      </table>
      <br /><br /><br />
        </form>
        <table width="300" height="100" border="1"  align="center" cellpadding="0" cellspacing="0">
          <tr align="center">
            <th>状态</th>
            <th>账户账号</th>
            <th>姓名</th>
            <th>电话</th>
            <th>邮箱</th>
            
          </tr>
          
    <%
      String select=request.getParameter("select");
      byte s[]=select.getBytes("ISO-8859-1");
       select=new String(s,"UTF-8");
       
       Connection con=null;
             Statement stmt=null;
             ResultSet rs=null;
             Class.forName("com.mysql.jdbc.Driver");
             String url="jdbc:mysql://localhost:3306/user";
             con=DriverManager.getConnection(url,"root","123456");
             stmt=con.createStatement();
             String sql="select * from userList where userId='"+select+"'";
             rs= stmt.executeQuery(sql);
            while(rs.next()){
            %>
             <tr align="center">
          
           <td><%=rs.getString("state") %></td>
           <td><%=rs.getString("userId") %></td>
           <td><%=rs.getString("userName") %></td>
           <td><%=rs.getString("tel") %></td>
           <td><%=rs.getString("email") %></td>
       </tr>
       <%
          }
             stmt.close();
             con.close();
     %>
     </table>
  </body>
</html>
