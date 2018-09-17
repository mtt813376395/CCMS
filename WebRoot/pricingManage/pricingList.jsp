<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pricingList.jsp' starting page</title>
    
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
    <div>
      <table width="355" border="0">
        <tr>
          <td width="171"><a href="../CCMS/pricingManage/addPricing.html" target="_self">添加资费</a></td>
          <td width="171">资费列表</td>
        </tr>
      </table> 
      </div>
      <div align="center"><br />
          <h1>以下是资费列表</h1>
        <form action="pricingManage/delete.jsp" name="form" method="get">
               <table width="540" height="150" border="1">
          <tr align="center">
           
            <td>资费名称</td>
            <td>月租费用</td>
            <td>小时费用</td>
            <td>资费说明</td>
            <td>修改</td>
          </tr>
          
          <%
             Connection con=null;
             Statement stmt=null;
             ResultSet rs=null;
             Class.forName("com.mysql.jdbc.Driver");
             String url="jdbc:mysql://localhost:3306/a";
             con=DriverManager.getConnection(url,"root","123456");
             stmt=con.createStatement();
             String sql="select * from pricinglist";
             rs=stmt.executeQuery(sql);
             
             while(rs.next()){
        
       %>
       <tr>
          
           <td><%=rs.getString("priceName") %></td>
           <td><%=rs.getString("mouthMoney") %></td>
           <td><%=rs.getString("hourMoney") %></td>
           <td><%=rs.getString("priceDetail") %></td>
           <td align="center"><a href="../CCMS/pricingManage/update.jsp" target="_self">修改</a></td>
       </tr>
       <%
          }
          rs.close();
          stmt.close();
          con.close();
        %>
            <tr align="center"><td colspan="6"><input type="submit" value="删除"/></td></tr>
        </table>
        </form>

      </div>
   
</body>
</html>
