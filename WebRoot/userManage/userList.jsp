<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userList.jsp' starting page</title>
    
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
        <td width="186">用户列表</td>
         <td width="176"><a href="../CCMS/userManage/delete.jsp" target="_self"> 删除用户</a></td>
        <td width="805">
            <div align="center">
              <font>服务账号</font>
              <input type="text" name="select" target="_self" size="15" />
              <input type="submit" value="查询" />
              </div>
        </td>
      </tr>
      </table>
      <br /><br /><br />
        </form>
           <div align="center"> <br/>
      <table width="91%" border=1 align="center" cellpadding="0" cellspacing="0" bordercolor="#ccccff" bgcolor="#ccddee" class="9P" >
        <tr align="center"> 
          <td width="55" height="31"> <div align="center"> 状态</div></td>
          <td width="67"> <div align="center"> 帐务帐号</div></td>
          <td width="73"> <div align="center"> 姓名</div></td>
          <td width="101"> <div align="center"> 电话</div></td>
          <td width="138"> <div align="center"> 邮箱</div></td>
          
             </tr>
           
         <%
           
             Connection con=null;
             Statement stmt=null;
             ResultSet rs=null;
             Class.forName("com.mysql.jdbc.Driver");
             String url="jdbc:mysql://localhost:3306/a";
             con=DriverManager.getConnection(url,"root","123456");
             stmt=con.createStatement();
             String sql="select * from userlist";
             rs=stmt.executeQuery(sql);
             
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
          rs.close();
          stmt.close();
          con.close();
        %>
          
        </table>
        </div>
        <br /><br /><br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><hr />
        <hr/>
<p class="text_link"><font size="2" face="宋体">
  <center>
    About Tarena - 公司简介 - 联系方法 - 相关法律 - 客户服务 
  </center>
  <br>
  <center>
    达内公司版权所有
  </center>
  </font></p>
<p class="text_link"><font size="-1">
  <center>
    Copyright&nbsp;<img src="/image/c-00.gif" width="9" height="9">&nbsp;2000. 
    Tarena Technologies Inc. All Rights Reserved 
  </center>
  </font></p></center>
</body>
</html>