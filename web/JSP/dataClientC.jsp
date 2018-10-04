<%-- 
    Document   : dataClientC
    Created on : 22-nov-2017, 23:32:10
    Author     : Sakai
--%>

<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>UNSTOPPABLE LEGION || PITBULLS</title>
</head>
        <link rel="stylesheet" href="../css/style.css" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="funciones.js"></script>

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


#caja2{
    width: 50%;
    height: 50%;
    position: absolute;
    margin-top: 5%;
    margin-left: 25%;
}
#cajitas2{
    width: 0;
    height:0;
    margin-left: 15%;
    margin-top: 15%;
    background-color: rgba(0,0,0,0.2);
    display: inline-block;
    float: left;
    opacity: 0;
}
.bodySingConfirm{
    position: absolute;
    margin-left: 53%;
    margin-top: 3%;
    margin-bottom: -35%;
    width: 40%;
    height:  145%;
    border-radius: 10px;
    background-color: #9DE6E6;
    background-color: rgba(0,0,0,0.8);
    color: white;
}
.espacioSignC{
    margin-left: 20%;
    opacity: 0.6;
}
.espacioTextField{
    margin-right: 5%;
    width: 30%;
}
.botonCancel{
    margin-left: 50%;
    margin-top: -5%;
}

.bodySingwelcoming{
    margin-left: 3%;
    position: fixed;
    top: 19%;
    bottom: 55%;
    width: 45%;
    height:  54%;
    border-radius: 10px;
    background-position: center center;
    background-image: url(15285046_1134268473354552_7847210642459795229_n-iloveimg-resized.jpg);
    background-repeat: no-repeat;
    background-color: rgba(0,0,0,0.8);
    color: whitesmoke;
}
#inf{
    margin-left: 0%;
    margin-right: 0%;
    position: fixed;
    top: 19%;
    bottom: 55%;
    width: 45%;
    height:  54%;
    border-radius: 10px;
    opacity: 0;
    transition: 0.8s ease-in;
}
.bodySingwelcoming:hover div#inf{
    opacity: 0.7;
    background-color: black;
    transform: scale(1);
    transition: 0.5s ease-in;
}
.welcominSignInText{
    margin-left: 10%;
    margin-right: 10%;
    margin-top: 10%;
    width: 80%;
    height: auto;
    text-align: justify; 
    color: whitesmoke;
    font-size: 15pt;
    font-style: bold;
}
</style>
<header>
<section class="headSection">
<section class="logoSection">
    <a href="http://localhost:8080/unstoppable/JSP/principalClient.jsp"><img src="../Images/UnsLogo.jpg"></a>
        
</section>
<br>
<h5 class="espacio" id="colorTexto"> American Bully Breeder!!!</h5>
<div>
<ul class="menu">
    <li><a href="http://localhost:8080/unstoppable/JSP/principalClient.jsp" class="menuhover" id="colorTexto">HOME</a></li>
</ul>
<ul class="menu2">
    <li><s:a action="Image1" class="menuhover" id="colorTexto">KENNELS</s:a></li>
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
    <li><a type="menu" class="menuhover" href="http://localhost:8080/unstoppable/JSP/dataClientC.jsp"><s:a style="none" id="colorTexto">  
               
            <%
                String name=request.getParameter("name");
                String password=request.getParameter("password");
                
                    try{
                        name=session.getAttribute("name").toString();
                        out.print(""+name);
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
<script>
    function nameSign(e){
        key=e.keyCode || e.which;
        keyBoard=String.fromCharCode(key).toLocaleLowerCase();
        letters=" abcdefghijklmnopqrstuvwxyz";
        specialLetters="8-37-38-46-164";
        specialKeyBoard=false;
        for(var i in specialLetters){
            if(key==specialLetters[i]){
                specialKeyBoard=true;
                break;
            }
        }
        if(letters.indexOf(keyBoard)==-1 && !specialKeyBoard){
            alert("Type correct name");
            return false;
        }
    }
            
    function LastnameSign(e){
        key=e.keyCode || e.which;
        keyBoard=String.fromCharCode(key).toLocaleLowerCase();
        letters=" abcdefghijklmnopqrstuvwxyz";
        specialLetters="8-37-38-46-164";
        specialKeyBoard=false;
        for(var i in specialLetters){
            if(key==specialLetters[i]){
                specialKeyBoard=true;
                break;
            }
        }
        if(letters.indexOf(keyBoard)==-1 && !specialKeyBoard){
            alert("Type correct lastname");
            return false;
        }
    }
            
    function telephone(e){
        key=e.keyCode || e.which;
        keyBoard=String.fromCharCode(key).toLocaleLowerCase();
        telephonenum=" ()-0123456789";
        specialLetters="8-37-38-46";
        specialKeyBoard=false;
        for(var i in specialLetters){
            if(key==specialLetters[i]){
                specialKeyBoard=true;
                break;
            }
        }
        if(telephonenum.indexOf(keyBoard)==-1 && !specialKeyBoard){
            alert("Type your telephone number");
            return false;
        }
    }
    function address(e){
        key=e.keyCode || e.which;
        keyBoard=String.fromCharCode(key).toLocaleLowerCase();
        letters=" #0123456789abcdefghijklmnopqrstuvwxyz";
        specialLetters="8-37-38-46-164";
        specialKeyBoard=false;
        for(var i in specialLetters){
            if(key==specialLetters[i]){
                specialKeyBoard=true;
                break;
            }
        }
        if(letters.indexOf(keyBoard)==-1 && !specialKeyBoard){
            alert("Type correct name");
            return false;
        }
    }
    function citySign(e){
        key=e.keyCode || e.which;
        keyBoard=String.fromCharCode(key).toLocaleLowerCase();
        letters=" abcdefghijklmnopqrstuvwxyz";
        specialLetters="8-37-38-46-164";
        specialKeyBoard=false;
        for(var i in specialLetters){
            if(key==specialLetters[i]){
                specialKeyBoard=true;
                break;
            }
        }
        if(letters.indexOf(keyBoard)==-1 && !specialKeyBoard){
            alert("Type correct city's name");
            return false;
        }
    }
    function stateSign(e){
        key=e.keyCode || e.which;
        keyBoard=String.fromCharCode(key).toLocaleLowerCase();
        letters=" abcdefghijklmnopqrstuvwxyz";
        specialLetters="8-37-38-46-164";
        specialKeyBoard=false;
        for(var i in specialLetters){
            if(key==specialLetters[i]){
                specialKeyBoard=true;
                break;
            }
        }
        if(letters.indexOf(keyBoard)==-1 && !specialKeyBoard){
            alert("Type correct state's name");        
            return false;
        }
    }
    function countrySign(e){
        key=e.keyCode || e.which;
        keyBoard=String.fromCharCode(key).toLocaleLowerCase();
        letters=" abcdefghijklmnopqrstuvwxyz";
        specialLetters="8-37-38-46-164";
        specialKeyBoard=false;
        for(var i in specialLetters){
            if(key==specialLetters[i]){
                specialKeyBoard=true;
                break;
            }
        }
        if(letters.indexOf(keyBoard)==-1 && !specialKeyBoard){
            alert("Type correct country's name");
            return false;
        }
    }

//    function validateEmail(){
//        var filter='/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/';
//        if(!filter.test(email.value)){
//            alert("Type correct @mail");
//            return false;
//        }
//    }    
//
//function validateEmail1(e){
//    var k;
//    k=document.all?parseInt(e.keyCode):parseInt(e.which);
//        if (document.formSign.email.value.indexOf('@')== -1 && tab==true){
//        alert("Es correcto");
//        
//    }else{
//        alert("Es incorrecto");
//        //document.formSign.submit();
//    }
//}
    function emailValues(e){
        key=e.keyCode || e.which;
        keyBoard=String.fromCharCode(key).toLocaleLowerCase();
        letters="@0123456789QWERTYUIOPASDFGHJKLZXCVBNMabcdefghijklmnopqrstuvwxyz._!#-+*^/\|";
        specialLetters="8-37-38-46-164";
        specialKeyBoard=false;
        for(var i in specialLetters){
            if(key==specialLetters[i]){
                specialKeyBoard=true;
                break;
            }
        }
        if(letters.indexOf(keyBoard)==-1 && !specialKeyBoard){
            alert("Type correct email");
            return false;
        }
    }
        </script>
<body class="body">
    <div  class="bodySingConfirm">
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
                <s:iterator value="dclient"  status="rowStatus">

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
        <form action="upDate" method="post">
            <div class="espacioSignC">
            <br>
            <br>
            <br>
            <label>ID: <br><s:textfield name="id" editable="false"> </s:textfield></label>
        <br>
        <br>
            <label>Name: <br><s:textfield name="name" > </s:textfield></label>
        <br>
        <br>
            <label>Lastname: <br><s:textfield  name="lastname" > </s:textfield></label>
        <br>
        <br>
            <label>Phone: <br><s:textfield  name="phone" > </s:textfield></label>
        <br>
        <br>
            <label>Address: <br><s:textfield name="address" > </s:textfield></label>
        <br>
        <br>
            <label>City:<br><s:textfield name="city" > </s:textfield></label>
        <br>
        <br>
            <label>State: <br><s:textfield name="state" > </s:textfield></label>
        <br>
        <br>
            <label>Country: <br><s:textfield name="country" > </s:textfield></label>
        <br>
        <br>
            <label>Password: <br><s:textfield type="password" name="password" > </s:textfield></label>
        <br>
        <br>
            <label>Email: <br><s:textfield name="email" > </s:textfield></label>
        <br>
        <br>
            <label>Zipcode: <br><s:textfield name="zipcode" > </s:textfield></label>
        <br>
        <br>
        <br>
            <label type="hidden"><s:textfield type="hidden" name="typeUser" value="buyer"> </s:textfield></label>
            <input type="submit" value="Update"/>
            </div>
        </form>
            <br>
            <div class="espacioSignC">
        <form action="loginUs" method="post"> 
            
            <label>Are you sure to continuous with those data?</label>
        <s:textfield type="hidden" name="name" read-only="false"> </s:textfield>
        <s:textfield type="hidden" name="password" placeholder="ID Client"> </s:textfield>
        <br>
        <br>
         <input type="submit" value="Accept"/>
       
        </form>
        <form action="delClient" method="post" class="botonCancel">
            
            <s:textfield type="hidden" name="id"> </s:textfield>
    <input type="submit" value="Cancel"/>
    </form>
     </div>

</div> 
    <div class="bodySingwelcoming">
        <div id="inf">
            <p class="welcominSignInText">
                Do you want to know more 
                about us 
                <br>
                and our pit bulls? you 
                have found the right place, 
                contact us at:
                <br>
                Mobile: 1(760)713-3188
                <br>
                Mail:  Jugg1130@gmail.com
            </p>
        </div>
    </div>
</body>
<footer class="footerSpaceDataClient">
<p class="followPosition" id="colorTexto">follow us: </p>
<ul>
	<a href="" title="" class="iconSocials"><img href="referencePrueba.html" src="../Images/Twitter-icon2.png" alt="" class="iconPosition"></a>
	<a href="https://www.facebook.com" title="facebook" class="iconSocials"><img src="../Images/fbIcon.png" alt="" class="iconPosition"></a>
	<a href="" title="" class="iconSocials"><img href="referencePrueba.html" src="../Images/Instagram_icon.png" alt="" class="iconPosition"></a>
</ul>
	
	
	
</footer>
</html>
