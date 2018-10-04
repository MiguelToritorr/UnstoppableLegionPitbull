<%-- 
    Document   : login
    Created on : 19-oct-2017, 7:03:33
    Author     : Sakai
--%>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<%@taglib prefix="s" uri="/struts-tags" %>
<link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="../css/style.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UNSTOPPABLE LEGION || PITBULLS</title>
        
<script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="funciones.js"></script>
	<link rel="stylesheet" href="css/style.css" type="text/css" />
	

<style type="text/css" media="screen">
.body{
    width: 100%;
    height:85%;
    }
   
#colorTexto{
    color: whitesmoke;
    opacity: 0.7;
}

.log{
    position: absolute;
    width: 80%;
    height: 65%;
    margin-bottom:2%;
    margin-top: 3%;
    margin-left: 10%;
    background-color: black;
    opacity: 0.6;
    border-radius: 5px;
}
.logbox{
    width: 40%;
    height: 45%;
    margin-bottom:2%;
    margin-top: 10%;
    margin-left: 30%;

}
.cajas{
    border-radius: 5px;
}
.espaciolog{
    position:absolute;
    margin-left: 45%;
    margin-top: 30%;
}
</style>
<header>
<section class="headSection">
<section class="logoSection">
    <a href="http://localhost:8080/unstoppable/"><img src="../Images/UnsLogo.jpg" alt=""></a>
        
</section>
<br>
<h5 class="espacio" id="colorTexto"> American Bully Breeder!!!</h5>
<div>
    <ul class="menu">
	<li><a href="http://localhost:8080/unstoppable/" class="menuhover" id="colorTexto">HOME</a></li>
</ul>
<ul class="menu2">
    <li><s:a action="ImageP" class="menuhover" id="colorTexto">KENNELS</s:a></li>
</ul>
<ul class="menu2">
	<li><a href="../JSP/aboutUs.jsp" type="menu" class="menuhover" id="colorTexto">ABOUT US</a></li>
</ul>
<ul class="menu2">
	<li><a href="http://localhost:8080/unstoppable/JSP/trainning.jsp" class="menuhover" id="colorTexto">TRAINNING</a></li>
</ul>
</div>	
</section>
</header>
<link rel="stylesheet" href="">
</head>
<body class="body">
    <div class="log">
        <form method="post" action="loginUs" class="logbox">
            
            <br>
            <p id="colorTexto">Username:</p>
            <input type="text" name="name" maxlength="30" placeholder="Username" required class="cajas">
            <br>
            <br>
            <p id="colorTexto">Password:</p>
            <input type="password" name="password" maxlength="10" placeholder="Password" required class="cajas">
            <input class="btn btn-primary" value="log in" style="margin-left:35%;background-color: rgba(255,255,255,0.6);padding: 1%;margin-top: 1%;color:black;" type="submit" title="Sign In"/>
        </form>
    </div>
    <%
        String name;
        String password;
        name=request.getParameter("name");
        password=request.getParameter("password");
    %>
    <form class="espaciolog">
        <h4><s:a href="http://localhost:8080/unstoppable/JSP/clientsignIn.jsp" id="colorTexto">Create count</s:a> </h4>
    </form>
</body>
<footer class="footerSpace">
    <p class="followPosition" id="colorTexto">follow us: </p>
<ul>
	<a href="" title="Twitter" class="iconSocials"><img src="../Images/Twitter-icon2.png" class="iconPosition"></a>
	<a href="https://www.facebook.com" title="facebook" class="iconSocials"><img src="../Images/fbIcon.png" class="iconPosition"></a>
	<a href="" title="Instagram" class="iconSocials"><img src="../Images/Instagram_icon.png" class="iconPosition"></a>
</ul>
	
	
	
</footer>
</html>
