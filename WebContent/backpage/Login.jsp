<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录界面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/backpage/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/backpage/css/body.css"/> 
</head>
<body>
<div class="container">
	<section id="content">
		<form action="">
			<h1>会员登录</h1>
			<div>
				<input type="text" placeholder="账号" required="" id="username" />
			</div>
			<div>
				<input type="password" placeholder="密码" required="" id="password" />
			</div>
			 <div class="">
				<span class="help-block u-errormessage" id="js-server-helpinfo">&nbsp;</span>			</div> 
			<div>
				<!-- <input type="submit" value="Log in" /> -->
				<input type="submit" value="登录" class="btn btn-primary" id="js-btn-login" style="margin-left:20%"/>

			</div>
		</form><!-- form -->

	</section><!-- content -->
</div>
<!-- container -->


<br><br><br><br>

</body>
</html>