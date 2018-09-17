<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <style type="text/css">
      @CHARSET "UTF-8";
body{
	background-image:url(../CCMS/image/login.gif);
    background-repeat:no-repeat;
    background-size:1570px 710px;
	
}
#btn {
	background-color: #fc5628;
	color: #ffffff;
	cursor: pointer;
	width: 70%;
	height: 40px;
	margin-left: 15%;
	border: 0;
	font-family: "微软雅黑";
	border-radius: 20px;
	border: 0;
}

#main {
	width: px;
	height: 360px;
	background-color: #6459ed;
	margin-top: 10%;
	margin-left: 30%;
	margin-right: 30%;
}

#login_form {
	width: 100%;
	height: 100%;
	background-color: #CCCFFF;
	margin-top: 10%;
	margin: 0 auto;
}

#header {
	width: 100%;
	height: 55px;
	color: #ffffff;
	border-bottom: 1px solid #ffffff;
	font-size: 20pt;
	font-family: "微软雅黑";
	line-height: 55px;
	text-align: center;
}

#form_widget {
	width: 100%;
	height: 310px;
	background-color: #808080;
	
}

#username,#password {
	
	width: 70%;
	margin: 0 auto;
	height: 35px;
	font-size: 15pt;
	border-radius: 5px; /*设置圆角样式*/
	border: 0;
	padding-left: 8px;
}

#vcode {
	height: 35px;
	width: 40%;
	font-size: 15pt;
	margin-left: 0;
	border-radius: 5px;
	border: 0;
	padding-left: 8px;
}

#code {
	color: #ffffff; /*字体颜色白色*/
	background-color: #000000;
	font-size: 20pt;
	font-family: "华康娃娃体W5";
	padding: 5px 35px 10px 35px;
	margin-left: 6%;
	cursor: pointer;
}
#p1{
	margin-left:6%;
}
#p2{
	text-align:right;
	color:#ffffff;
	font-family:"微软雅黑";
	cursor: pointer;
}
a:link{background-color:;}
a:hover{font-style:italic;}
   </style>
  </head>
  
  <body >
      <div id="main">
       <div id="header">通信改变生活</div>
     <div id="login_form">
      <form action="login/loginCheck.jsp" id="form1" method="post">
      <div id="form-weight">  
      <br>  
         <p id="p1">  用户名：<input type="text" name="username" id="username" class="username" placeholder="请输入用户名" ></p>
           <br>
         <p id="p1">  密&nbsp;&nbsp;码：<input type="password" name="password" id="password" class="password" placeholder="请输入密码"></p>
           <br>
         <p id="p1">  验证码：<input type="text" id="vcode" onfocus="changeImg();" class="vcode" placeholder="请输入验证码"><span id="code" title="看不清，换一张"></span></p>
           <br>
           <input type="submit" id="btn" class="btn" onmouseover="changecolor()" onmouseout="return1()"  onmousedown="check()" value="登录">
           <p id="p2"><a href="../CCMS/login/register.html" >注册</a></p>
        </div>
      </form>
      </div>
      </div>
      <script type="text/javascript">
         var code;//声明一个变量用于存储生成的验证码  
            document.getElementById("code").onclick=changeImg;  
            function changeImg(){  
                var arrays=new Array(  
                    '1','2','3','4','5','6','7','8','9','0',  
                    'a','b','c','d','e','f','g','h','i','j',  
                    'k','l','m','n','o','p','q','r','s','t',  
                    'u','v','w','x','y','z',  
                    'A','B','C','D','E','F','G','H','I','J',  
                    'K','L','M','N','O','P','Q','R','S','T',  
                    'U','V','W','X','Y','Z'               
                );  
                code='';
                for(var i=0;i<4;i++){  
                    var r=parseInt(Math.random()*arrays.length);  
                    code+=arrays[r];  
                }  
                document.getElementById("code").innerHTML=code;//将验证码写入指定区域  
            }         
               
            function check(){  
                var input_code=document.getElementById("vcode").value;  
                if(input_code.toLowerCase()==code.toLowerCase())  
                {  
                    return true;  
                } else{
                alert("请输入正确的验证码!");    
                return false;
                   }  
            } 
           function changecolor(){
               document.getElementById("btn").style.backgroundColor="orange";
           }
           function return1(){
               document.getElementById("btn").style.backgroundColor="";
           }
           
       </script>
    </body>
</html>
