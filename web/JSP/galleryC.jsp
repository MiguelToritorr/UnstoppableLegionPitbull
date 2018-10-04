<%-- 
    Document   : gallery
    Created on : 09-nov-2017, 18:55:59
    Author     : Sakai
--%>


<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<%@taglib prefix="s" uri="/struts-tags" %>
<link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UNSTOPPABLE LEGION || PITBULLS</title>
        
<script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="funciones.js"></script>
	<link rel="stylesheet" href="../css/style.css" type="text/css" />
	

<style type="text/css" media="screen">
.body{
	height: 100%;
	width: 100%;
	background-color: white;
}
#colorTexto{
    color: whitesmoke;
    opacity: 0.7;
}
.Gallery{
    position: top;
    width: 95%;
    height: auto;
    margin-bottom:15%;
    margin-top: 3%;
    margin-left: 2%;
    background-color: black;
    opacity: 0.6;
    border-radius: 5px;
    font-size: 20pt;
}
.gallerybox{
    margin-bottom:2%;
    margin-top: 1%;
    margin-left: 2%;
    color: white;
}
.gallerybox img:hover{
    transform: scale(3);
    transition: 0.8s ease-in-out;
    margin-left: 50%;
    margin-top: 35%;
    border-radius: 5px;
}
.commentsColumn{
    position: absolute;
    width: auto;
    height: auto;
    margin-top: 1%;
    margin-left: 0;
    margin-right: 4%;
    text-align: justify;
}
.footerSpacegC{
    position: fixed;
    float: left;
    bottom: 0;
    margin-top: 106%;
    margin-left: 0px;
    margin-right: 0px;
    height: 12%;
    width: 100%; 
    background-color: black;
}
</style>
<header>
<section class="headSection">
<section class="logoSection">
    <a href="http://localhost:8080/unstoppable/JSP/principalClient.jsp"><img title="HOME" src="../Images/UnsLogo.jpg"></a>
        
</section>
<br>
<h5 class="espacio" id="colorTexto"> American Bully Breeder!!!</h5>
<div>
<ul class="menu">
		<li><a href="http://localhost:8080/unstoppable/JSP/principalClient.jsp" class="menuhover" id="colorTexto">HOME</a></li>
</ul>
<ul class="menu2">
	<li><a href="http://localhost:8080/unstoppable/JSP/aboutUsC.jsp" type="menu" class="menuhover" id="colorTexto">ABOUT US</a></li>
</ul>
<ul class="menu2">
	<li><a href="http://localhost:8080/unstoppable/JSP/trainningC.jsp" class="menuhover" id="colorTexto">TRAINNING</a></li>
</ul>
<ul class="menu2">
	<li><s:a action="logOutC" href="http://localhost:8080/unstoppable/" id="colorTexto">LOG OUT</s:a></li>
</ul>
<ul class="menu2">
    <li><a type="menu" class="menuhover"><s:a style="none" action="dataCount" id="colorTexto" alt="My count.">  <%
            try{
                String username=session.getAttribute("name").toString();
                out.print(""+username);
            }catch(Exception e){
                session.setAttribute("msg","testing log system");
            }
            %></s:a></a></li>
</ul>
</div>	
</section>
      
</header>
<link rel="stylesheet" href="">
</head>
<body class="body">
       <h2 id="titulo"> ULPS</h2>

       <div id="cont"  width="70%" class="Gallery">
           <table class="gallerybox" cellspacing="0" width="100%" style="border-left: none; border-right: none;border-top: none; border-bottom:2px  #7f7f7f">
  <thead>
<tr >
     <th ><b></b></th>
   <th><b>Tagnumber</b></th>
  <th  ><b>Name</b></th>
  <th ><b>Age</b></th>
  <th ><b>Weight</b></th>
  
  <th ><b>Sex</b></th>
  
  <th ><b>Price</b></th>
  <th ><b>Comments</b></th>
</tr>
</thead>
<tbody>

<s:iterator value="dataList">
<tr>
    <td><img width="150" height="150" src="<s:url value='Image1.action?tagnumber='/><s:property value='tagnumber' />"></td>     <td><s:property  value="tagnumber"/></td>  
    <td><s:property value="name"/></td>
    <td> <s:property value="age"/></td>
    <td> <s:property value="pounds"/></td>
    
    <td> <s:property value="sex"/></td>
    
    <td> <s:property value="price"/></td>
    <td class="commentsColumn"> <s:property value="comments"/></td>
    <td margin-top="3%"><form method="post" action="${initParam['posturlCart']}">
            <input type="hidden" name="upload" value="1"/>
            <input type="hidden" name="cmd" value="_cart"/>
            <input type="hidden" name="business" value="${initParam['businessCart']}"/>
            <s:label><s:textfield type="hidden" name="tagnumber"></s:textfield></s:label>
            <s:label><s:textfield type="hidden" name="name"></s:textfield></s:label>
            <s:label><s:textfield type="hidden" name="price"></s:textfield></s:label>
            <s:label><s:textfield type="hidden" name="comments"></s:textfield></s:label>
            <input type="hidden" name="quantity_1" maxlength="6"  editable="false" onpaste="false" value="1">
            <td><input class="btn btn-default" type="submit" value="Shop"></td>
        </form>
    </td>
</tr>
</s:iterator>      
</tbody>
</table>
</div>
    
    
</body>
	

<footer class="footerSpacegC">
    <p class="followPosition" id="colorTexto">follow us: </p>
    <ul>
	<a href="" title="" class="iconSocials"><img href="referencePrueba.html" src="../Images/Twitter-icon2.png" alt="" class="iconPosition"></a>
	<a href="https://www.facebook.com/" title="facebook" class="iconSocials"><img src="../Images/fbIcon.png" alt="" class="iconPosition"></a>
	<a href="" title="" class="iconSocials"><img href="referencePrueba.html" src="../Images/Instagram_icon.png" alt="" class="iconPosition"></a>
    </ul>
</footer>	
</html>