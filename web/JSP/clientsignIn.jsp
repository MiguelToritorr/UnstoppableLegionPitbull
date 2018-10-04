<%-- 
    Document   : clientsignIn
    Created on : 09-nov-2017, 18:54:41
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
.bodySing{
    margin-left: 53%;
    margin-top: 3%;
    margin-bottom: -35%;
    width: 40%;
    height:  175%;
    border-radius: 10px;
    background-color: #9DE6E6;
    background-color: rgba(0,0,0,0.8);
    color: white;
}

.bodySingwelcoming{
    margin-left: 3%;
    position: fixed;
    top: 18%;
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
    top: 18%;
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
.espacioSign{
    margin-left: 30%;
}
.btn-default{
    background: #000;
    color: #fff;
}
.btn-default:hover{
    background: #fff;
    color: #000;
} 
.traspa1{
    width: 40%;
    margin-left: 10%;
    background-color: rgba(0,0,0,0.5);
    color: white;
}
.traspa2{
    width: 65%;
    background-color: rgba(0,0,0,0.5);
    color: white;
}
.traspa3{
    width: 65%;
    background-color: rgba(0,0,0,0.5);
    color: white;
}
.traspa4{
    width: 65%;
    background-color: rgba(0,0,0,0.5);
    color: white;
}
.traspa5{
    width: 65%;
    background-color: rgba(0,0,0,0.5);
    color: white;
}
.traspa6{
    width: 65%;
    background-color: rgba(0,0,0,0.5);
    color: white;
}
.traspa7{
    width: 65%;
    background-color: rgba(0,0,0,0.5);
    color: white;
}
.traspa8{
    width: 65%;
    background-color: rgba(0,0,0,0.5);
    color: white;
}
.tras{
    width: 75%;
    color: white;
    margin-top: 5px;
    color: rgba(255,225,255,0.8);
    margin-left: 50%;
}
</style>
  <header>
<section class="headSection">
<section class="logoSection">
	<a href="http://localhost:8080/unstoppable/"><img src="../Images/UnsLogo.jpg"></a>
        
</section>
<br>
<h5 class="espacio" id="colorTexto"> American Bully Breeder!!!</h5>
<div>
<ul class="menu">
    <li><s:a action="ImageP" class="menuhover" id="colorTexto">KENNELS </s:a></li>
</ul>
<ul class="menu2">
	<li><a href="http://localhost:8080/unstoppable/JSP/aboutUs.jsp" type="menu" class="menuhover" id="colorTexto">ABOUT US</a></li>
</ul>
<ul class="menu2">
	<li><a href="JSP/trainning.jsp" class="menuhover" id="colorTexto">TRAINNING</a></li>
</ul>
<ul class="menu2">
	<li><a href="http://localhost:8080/unstoppable/JSP/login.jsp" class="menuhover" id="colorTexto">LOG IN</a></li>
</ul>

</div>	
</section>
</header>
<link rel="stylesheet" href="">
</head>
<link rel="stylesheet" href="">
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
            <div class="bodySing">
        
    <form class="form-group " method="post" name="formSign" action="RegClient">

        <div class="espacioSign">
            <br>
            <s:label>ID: </s:label>
            <br >
            <input class="form-control traspa1 " type="number" name="id" maxlength="3" required>
            <br >
            <s:label>Name: </s:label>
            <br >
            <input class="form-control traspa2" placeholder="Type your name" type="text" required id="name" name="name" maxlength="30" onkeypress="return nameSign(event)" onpaste="return false">
            <br >
            <s:label>Last name: </s:label>
            <br >
            <input class="form-control traspa3"  placeholder="Type your lastname" required type="text" name="lastname" maxlength="30" onkeypress="return LastnameSign(event)" onpaste="return false">
            <br >
            <s:label>Phone: </s:label>
            <br >
            <input class="form-control traspa4" type="text" required title="Type correct phone (000)-000-0000" placeholder="Phone number: (111)-123-4567" name="phone" maxlength="15" pattern="^[(]+([0-9]{3})[)]+[-{1}]+(\d{3})-?(\d{4})" onpaste="false">
            <br >
             <s:label>Address: </s:label>
             <br >
            <input class="form-control traspa5" required placeholder="Type your current address" onpaste=="false" type="text" name="address" maxlength="40">
            <br >
            <s:label>City: </s:label>
            <br >
            <input class="form-control traspa6" placeholder="Type your current city" required type="text" name="city" maxlength="20" onkeypress="return citySign(event)" onpaste="false">
            <br >
            <s:label>State: </s:label>
            <br >
            <input class="form-control traspa6" required placeholder="Type your current state" type="text" name="state" maxlength="30" onkeypress="return stateSign(event)" onpaste="false">
            <br >
            <s:label>Country: </s:label>
            <br >
            <input class="form-control traspa6" required placeholder="Type your current country" type="text" name="country" maxlength="30" onkeypress="return countrySign(event)" onpaste="false">
            <br >
           <s:label>Password: </s:label>
            <br >
            <input class="form-control traspa6" title="Must content: an espacial character, a capital letter, a minuscule and one number,  8 minimun characteres" required pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" type="password" name="password" maxlength="10">
            <br >
           <s:label>Email: </s:label>
            <br >
            <input class="form-control traspa6" type="text" placeholder="example@email.com" title="Type correct email(example@email.com)" pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" name="email" maxlength="40" onpaste="false" required>
            <br >
           <s:label>Zip Code: </s:label>
            <br >
            <input class="form-control traspa6" required placeholder="Example: 21942" title="invalid zipcode" pattern="^([1-9]{2})([0-9]{3})$" type="text" name="zipcode" maxlength="6">
            <br >
            <br >
            <input class="btn btn-default" type="submit" name="RegistrarB" title="Sign in" value="Sign In">
            
             </div>
            
        </form>
            </div>
            <div class="bodySingwelcoming">
                <div id="inf">
                    <p class="welcominSignInText">
                        Do you want to know more 
                        about us and our pitbulls? you 
                        have found the right place, 
                        contact us at:
                        <br>
                        <br>
                        Mobile: 1(760)713-3188
                        <br>
                        Mail:  Jugg1130@gmail.com
                            
                    </p>
                </div>
            </div>
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
