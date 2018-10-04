<%-- 
    Document   : Shop
    Created on : 09-nov-2017, 18:57:02
    Author     : Sakai
--%>


<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<%@taglib prefix="s" uri="/struts-tags" %>
<link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="css/styles.css">
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
    font-size: 12pt;
}
.contract{
    text-align:justify;
    width: 80%;
    height: fixed;
    padding-bottom: 2%;
    margin-bottom: fixed;
    margin-top: 5%;
    margin-left: 9%;
    float: left;
    background-color: black;
    opacity: 0.5;
}


.bodyShopping{
    position: absolute;
    width: 80%;
    height: 65%;
    margin-bottom:2%;
    margin-top: 3%;
    margin-left: 10%;
    background-color: black;
    opacity: 0.6;
    border-radius: 5px;
    font-size: 15pt;
}

.logbox{
    width: 40%;
    height: 40%;
    margin-bottom:50%;
    margin-top: -10%;
    margin-left: 40%;
    color: white;
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
    <a href="http://localhost:8080/unstoppable/JSP/principalClient.jsp"><img title="HOME" src="../Images/UnsLogo.jpg"></a>
        
</section>
<br>
<h5 class="espacio" id="colorTexto"> American Bully Breeder!!!</h5>
<div>

<ul class="menu">
		<li><a href="http://localhost:8080/unstoppable/JSP/principalClient.jsp" class="menuhover" id="colorTexto">HOME</a></li>
</ul>
<ul class="menu2">
	<li><a href="http://localhost:8080/unstoppable/JSP/galleryC.jsp" type="menu" class="menuhover" id="colorTexto">KENNELS</a></li>
</ul>
<ul class="menu2">
    <li><a href="http://localhost:8080/unstoppable/JSP/trainningC.jsp" class="menuhover" id="colorTexto">TRAINNING</a></li>
</ul>
<ul class="menu2">
	<li><s:a action="logOut" href="http://localhost:8080/unstoppable/" id="colorTexto">LOG OUT</s:a></li>
</ul>
 
<ul class="menu2">
   <form action="dataCount" method="post">
    <li><a type="menu" class="menuhover"><s:a style="none" id="colorTexto" alt="My count.">  <%
            try{
                String name=session.getAttribute("name").toString();
                out.print(""+name);
            }catch(Exception e){
                session.setAttribute("msg","testing log system");
            }
            %> </s:a></a></li>
    </form>
</ul>
    
</div>	

</section>

</header>
<link rel="stylesheet" href="">
</head>
<body>
    <form class="form-group " method="post" action="${initParam['posturl']}">
            <%
                int tagnumber=Integer.parseInt(request.getParameter("tagnumber"));
                String name = request.getParameter("name");
                String quantity_1=request.getParameter("quantity_1");
                String price=request.getParameter("price");
                String comments=request.getParameter("comments");
            %>
        <div class="bodyShopping">
            <div class="logbox">
            <input type="hidden" name="upload" value="1"/>
            <br>
            <input type="hidden" name="return" value="${initParam['returnurl']}"/>
            <br>
            <input type="hidden" name="cmd" value="_cart">
            <br>
            <input type="hidden" name="business" value="${initParam['business']}"/>
            <br >
            <s:label>Tag: <input type="hidden"><%=tagnumber%></input></s:label>
            <br>
            <br>
            <s:label>Name: <input type="hidden" name="item_name_1" value="<%=name%>"> <%=name%></input></s:label>
            <br>
            <br>
            <s:label>Price: <input type="hidden" name="amount_1"  id="colorTexto" value="<%=price%>"><%=price%></input></s:label>
            <br>
            <s:label>Comments: <input type="hidden" name="comments" value="<%=comments%>"><%=comments%></input></s:label>
            <s:label> <input type="hidden" name="quantity_1" value="<%=quantity_1%>"></input></s:label>
            <br>
            <br>
            <input class="btn btn-default" type="submit" value="Payment">
            </div>
        </div>
        </form>
    <form action="http://localhost:8080/unstoppable/JSP/principalClient.jsp">
        <input class="btn btn-default" type="submit" value="Cancel">
    </form>
</body>
<footer class="footerSpace">
    <p class="followPosition" id="colorTexto">follow us: </p>
    <ul>
        <a href="" title="" class="iconSocials"><img href="referencePrueba.html" src="../Images/Twitter-icon2.png" alt="" class="iconPosition"></a>
	<a href="https://www.facebook.com" title="facebook" class="iconSocials"><img src="../Images/fbIcon.png" alt="" class="iconPosition"></a>
	<a href="" title="" class="iconSocials"><img href="referencePrueba.html" src="../Images/Instagram_icon.png" alt="" class="iconPosition"></a>
    </ul>
</footer>

</html>
