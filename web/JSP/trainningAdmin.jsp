<%-- 
    Document   : trainningAdmin
    Created on : 08-ene-2018, 19:07:18
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
    width: 100%;            
    height:80%;
    background-color:white;
}
       
#colorTexto{
    color: whitesmoke;
    opacity: 0.7;
}

.posicionsubmenu{
    margin-left: -1.5%;
    position: absolute;
    
}

@media screen and (max-width:950px) {
    header section section{
        width: fixed;
        position: absolute;
        background-color: black;
    }
}
@media screen and (max-width:950px) {
    header section h5{
        display: none;
    }
}
@media screen and (max-width:950px) {
    header section div{
        width: 100%;
        background-color: black;
        display: inline-block;
        float: left;
    }
}
.trainning{
 width: 80%;
 height: 80%;
 margin-top: 5%;
 position: absolute;
 margin-left: 20%;   
 opacity: 0.8;
 
}
.footerSpaceAdmin{
    position: absolute;
    float: left;
    position-bottom: bottom;
    margin-bottom: -3%;
    margin-top: 109%;
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
	            <li><s:a action="dataC" class="menuhover" id="colorTexto">CLIENTS</s:a></li>
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
<link rel="stylesheet" href="">
</head>
<body class="body"  >
    <div class="tip">
    </div>
    <div class="trainning">
        <video controls>
            <source src="../trainningVideos/trainning1.MP4" type="video/mp4">
        </video>
    </div>
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
