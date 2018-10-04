<%-- 
    Document   : dataClients
    Created on : 14-nov-2017, 14:53:18
    Author     : Sakai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
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
}

.tabla{
    background-color: rgba(0,0,0,0.5);
}

.posicionsubmenu{
    margin-left: -1.5%;
    position: absolute;
    
}
#caja2{
    width: 50%;
    height: 50%;
    position: absolute;
    margin-top: 5%;
    margin-left: 25%;
}
#cajitas2{
    width: fixed;
    height:30%;
    margin-left: 15%;
    margin-top: 15%;
    background-color: rgba(0,0,0,0.2);
    display: inline-block;
    float: left;
}
</style>
        <header>
<section class="headSection">
<section class="logoSection">
	<a href="../JSP/principalAdmin.jsp"><img src="../Images/UnsLogo.jpg" alt="" /></a>
        
</section>
<br>
<h5 class="espacio" id="colorTexto"> American Bully Breeder!!!</h5>
<div>
    <ul class="menu" class="menuDin">
        <li><s:a action="Image" class="menuhover" id="colorTexto">KENNELS</s:a>
            <ul class="posicionsubmenu">
                <li><br><a class="menuhover" href="http://localhost:8080/unstoppable/JSP/RegDog.jsp" id="colorTexto">UPLOAD</a></li>
                <li><s:a action="Image" class="menuhover" id="colorTexto">GALLERY</s:a></li>
            </ul>
        </li>
    </ul>
    <ul class="menu2">
        <li><a class="menuhover" href="http://localhost:8080/unstoppable/JSP/aboutUsAdmin.jsp" id="colorTexto">ABOUT US</a></li>
    </ul>
    <ul class="menu2">
        <li><a class="menuhover" href="http://localhost:8080/unstoppable/JSP/trainningAdmin.jsp" id="colorTexto">TRAINNING</a></li>
    </ul>
    <ul class="menu2">
        <li><a href="../JSP/principalAdmin.jsp" class="menuhover" id="colorTexto">HOME</a></li>
    </ul>
    <ul class="menu2">
        <li><s:a  action="logOut" href="http://localhost:8080/unstoppable/" id="colorTexto">LOG OUT</s:a></li>
    </ul>
    <ul class="menu2"><form action="dataCount">
            <li><a type="menu" class="menuhover"><s:a style="none" id="colorTexto">  
                                <%
                                    try{
                                        String username=session.getAttribute("name").toString();
                                        out.print(""+username);
                                    }catch(Exception e){
                                        session.setAttribute("msg","testing log system");
                                    }
                                %>
                            </s:a></a>
                        </li>
                    </form>
                </ul>
</div>	
</section>
</header>
<body>
    <div id="cajitas">
        <div id ="cajitas2">
            <table style="margin: 0 auto" class="tabla table-hover" border="3">
                <thead>
                    <tr>
	            <th>ID </th>
	            <th>NAME </th>
	            <th>LASTNAME </th>
	            <th>PHONE </th>
	            <th>ADDRESS </th>
	            <th>CITY </th>
	            <th>STATE </th>
                    <th>COUNTRY </th>
                    <th>PASSWORD </th>
                    <th>EMAIL </th>
                    <th>ZIPCODE </th>
	            </tr>
                </thead>
                <s:iterator value="clientss"  status="rowStatus">
                    <tr>
                    <th> <s:property value="id"/></th>
                    <th> <s:property value="name"/></th>
                    <th> <s:property value="lastname"/></th>
                    <th> <s:property value="phone"/></th>
                    <th> <s:property value="address"/></th>
                    <th> <s:property value="city"/></th>
                    <th> <s:property value="state"/></th>
                    <th> <s:property value="country"/></th>
                    <th> <s:property value="password"/></th>
                    <th> <s:property value="email"/></th>
                    <th> <s:property value="zipcode"/></th>
                    </tr>
                </s:iterator>  
            </table>
        </div> 
    <div id="caja2">
        <div id="caja2">
            <form action="delClient" method="POST">
                <s:textfield name="id" placeholder="ID Client"> </s:textfield>
                <input type="submit" value="Delete client"/>
            </form>
        </div>
      
    </div>
    </div>   
</body>
<footer class="footerSpace">
<p class="followPosition">follow us: </p>
<ul>
    <a href="" title="" class="iconSocials"><img href="referencePrueba.html" src="../Images/Twitter-icon2.png" alt="" class="iconPosition"></a>
    <a href="https://www.facebook.com" title="facebook" class="iconSocials"><img src="../Images/fbIcon.png" alt="" class="iconPosition"></a>
    <a href="" title="" class="iconSocials"><img href="referencePrueba.html" src="../Images/Instagram_icon.png" alt="" class="iconPosition"></a>
</ul>
</footer>	

</html>
