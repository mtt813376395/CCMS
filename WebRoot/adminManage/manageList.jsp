<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'manageList.jsp' starting page</title>
    
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

	<table width="1013" border="0" align="center">
		<tr align="center">
			<td><a href="../CCMS/adminManage/addManage.html" target="_self">增加管理员</a></td>
			<td>管理员列表</td>
			<td><a href="../CCMS/adminManage/perInformation.html" target="_self">私人信息</a></td>
		</tr>
	</table>
	<br />
	<form action="delete.jsp" method="get">
	<table width="50%" border="1" align="center">
		<tr align="center">
		
			<th>账号</th>
			<th>姓名</th>
			<th>电话</th>
			<th>邮箱</th>
			<th>开户日期</th>
			<th>权限</th>
			<th>修改</th>
		</tr>
      <%
        
             Connection con=null;
             Statement stmt=null;
             ResultSet rs=null;
             Class.forName("com.mysql.jdbc.Driver");
             String url="jdbc:mysql://localhost:3306/a";
             con=DriverManager.getConnection(url,"root","123456");
             stmt=con.createStatement();
             String sql="select * from adminlist";
             rs=stmt.executeQuery(sql);
             
             while(rs.next()){
        
       %>
       <tr>
       
           <td><%=rs.getString("id") %></td>
           <td><%=rs.getString("name") %></td>
           <td><%=rs.getString("tel") %></td>
           <td><%=rs.getString("email") %></td>
           <td><%=rs.getString("date") %></td>
           <td><%=rs.getString("permission") %></td>
           <td align="center">
              <a href="../CCMS/adminManage/updateManage.html" target="_self">修改</a><br>
              <a href="../CCMS/adminManage/delete.jsp" target="_self">删除</a>
              
              </td>
       </tr>
       <%
          }
          rs.close();
          stmt.close();
          con.close();
        %>
     </table>
      
     </form>
  </body>
</html>
