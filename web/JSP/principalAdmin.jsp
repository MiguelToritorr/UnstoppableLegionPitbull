<%-- 
    Document   : principalAdmin
    Created on : 18-nov-2017, 23:49:08
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

@keyframes slider{
	
0%{
	left: 0;
}

20%{
	left: 0;
}

25%{
	left: -100%;
}

45%{
	left: -100%;
}

50%{
	left: -200%;
}

70%{
	left: -200%;
}

75%{
	left: -300%;
}

95%{
	left: -400%;
}

100%{
	left: -400%;
}
}

#slider {
    overflow: hidden;
}

#slider figure img {
    width: 20%;
    float: left;
}

#slider figure {
    position: relative;
    width: 500%;
    height: 450%;
    margin: 0%;
    left: 0%;
    text-align: left;
    font-size: 0;
    animation: 20s slider infinite;
}
.positionSlider{
    float: right;
    position: absolute;
    margin-right: 10%;
    margin-left: 38%;
    margin-top: 2%;
    width: 55%;
    height: 53%;
}
.slider ul li a:hover{
    margin-right: 10%; 
    margin-left: 35%;
    opacity: 0.5;
}
.imagenTamano{
    width: 24%;
    height: 29%;
    animation-direction: reverse; 
    opacity: 0.8;
    transition: 1s;
}
.sliderTrans img:hover{
    transform: scale(1.1);
    transition: 0.8s ease-in;
    opacity: 1;
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
.tips{
    position: absolute;
    float: left;
    margin-left: 2%;
    margin-top: 2%;
    height: 53%;
    width: 35%;
    background-color: black;
}

.mediaInfo{
    position: absolute;
    margin-left: 2%;
    margin-top: 31%;
    margin-bottom: 2%;
    height: 25%;
    width: 91%;
    background-color: transparent;
}

.mediaP1, video{
    float:left;
    margin-left: 2%;
    margin-top: 0.5%;
    margin-bottom: 0.5%;
    width: 250px;
    height: 150px;
}
.mediaP1 video:hover{
    transform: scale(3.5);
    transition: 0.8s ease-in;
    position: absolute;
    margin-left: 38%;
    margin-right: auto;
    margin-top: -18%;
}
.textVideo{
    float:left;
    margin-left: 0.4%;
    margin-top: 0.5%;
    margin-bottom: 0.5%;
    width: 300px;
    height: 150px;
    background-color: black;
    border-radius: 04px;
}
.mediaP2, video{
    float:left;
    margin-left: 1.3%;
    margin-top: 0.5%;
    margin-bottom: 0.5%;
    width: 250px;
    height: 150px;
}
.mediaP2 video:hover{
    transform: scale(3.5);
    transition: 0.8s ease-in;
    position: absolute;
    margin-left: -13%;
    margin-right: auto;
    margin-top: -18%;
}
.textSlideLeft{
    margin-left: 4%;
    margin-right: 4%;
    margin-top: 9%;
    font-size: 18pt;
    font-weight: 700;
    text-align: justify;
    color: black;
}
.textVideoContent{
    margin-left: 3%;
    margin-right: 3%;
    text-align: justify;
    font-size: 13pt;
    font-weight: bold;
    color: whitesmoke;
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
	


<!-- slider menu -->
<div id="slider" id="slide" class="positionSlider">
    <figure>
    <ul >
        <li action="Image"><s:a title="Gallery" class="sliderTrans"><img src="../Images/Goliath-iloveimg-resized.jpg" class="imagenTamano"></s:a> </li>
      <li><a href="#" title="" class="sliderTrans"><img src="../Images/imagen4original-iloveimg-resized.jpg" class="imagenTamano" ></a> </li>
      <li><a href="#" title="" class="sliderTrans"><img src="../Images/Lamole.jpg" class="imagenTamano" ></a></li>
      <li><a href="#" title="" class="sliderTrans"><img src="../Images/Merle.jpg" class="imagenTamano" ></a></li>
      <li><a href="#" title="" class="sliderTrans"><img src="../Images/imagen2.jpg" class="imagenTamano" ></a></li>
    </ul>
	</figure>
</div>
<!-- div on care tips -->
<div class="tips">
    <p id="colorTexto" class="textSlideLeft">
        WELCOME TO UNSTOPPABLE LEGION PITBULLS!!!
        <br>
        WE HAVE THE MOST HEALTHY PITBULLS,
        STRONG AS WILD BEAST, BUT IDEAL AS PETS,
        BECAUSE THEY ARE TRAINED FOR THE HOME!!!
    </p>
</div>

<!-- div media -->
<div class="mediaInfo">
    <div class="mediaP1">
        <video controls>
            <source src="../trainningVideos/trainning1.MP4" type="video/mp4">
        </video>
    </div>
    <div class="textVideo">
        <p class="textVideoContent">
            <br>
        OUR PITBULLS ARE TRAINED WITH THE NECESARY
        CARE TO KEEP THEM HEALTHY AND
        CAN BE EXCELLENT COMPANIONS!!!
        </p>
    </div>
    <div class="mediaP2">
        <video controls poster="../Images/imagen2.jpg">
            <source src="../trainningVideos/trainning2.mp4" type="video/mp4">
        </video>
        
    </div>
    <div class="textVideo">
        <p class="textVideoContent">
            <br>
        OUR PITBULLS INTERACT IN A PLEASANT ENVIROMENT
       WITH THE PURPOSE THAT THEM FEEL RELAXED TO GUARANTEE
       THE SAFETY OF OUR CUSTOMERS AND PITBULLS!!!
        </p>
    </div>
</div>

<footer class="footerSpace">
<p class="followPosition">follow us: </p>
<ul>
	<a href="" title="" class="iconSocials"><img href="referencePrueba.html" src="../Images/Twitter-icon2.png" alt="" class="iconPosition"></a>
	<a href="https://www.facebook.com" title="facebook" class="iconSocials"><img src="../Images/fbIcon.png" alt="" class="iconPosition"></a>
	<a href="" title="" class="iconSocials"><img href="referencePrueba.html" src="../Images/Instagram_icon.png" alt="" class="iconPosition"></a>
</ul>
	
	
	
</footer>	



</body>
</html>