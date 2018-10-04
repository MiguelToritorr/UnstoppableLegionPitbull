<%-- 
    Document   : RegDog
    Created on : 09-nov-2017, 18:55:34
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
.espacioSign{
    margin-left: 30%;
}
.container{ 

    margin-left: 33%;
    color: white;
    height: 70%;
    width: 25%;
    display: inline-block;
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
.traspa1{
    width: 40%;
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
    width: 65%;
    color: white;
    margin-top: 5px;
    color: rgba(255,225,255,0.8);
    margin-left: 50%;
}
.colorSelect{
    background-color: black;
    opacity: 0.6;
}
</style>
    <header class="headSection">
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
                    <li><s:a action="dataC" class="menuhover" id="colorTexto">CLIENTS </s:a></li>
                </ul>
                <ul class="menu2">
                    <li><s:a  href="JSP/login.jsp" id="colorTexto">LOG OUT</s:a></li>
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
<script>
    function dogName(e){
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
            alert("Type correct dog name!!");
            focus('');
            return false;
        }
    }
    
    function dogAge(e){
        key=e.keyCode || e.which;
        keyBoard=String.fromCharCode(key).toLocaleLowerCase();
        letters=" months1234567890";
        specialLetters="8-37-38-46";
        specialKeyBoard=false;
        for(var i in specialLetters){
            if(key==specialLetters[i]){
                specialKeyBoard=true;
                break;
            }
        }
        if(letters.indexOf(keyBoard)==-1 && !specialKeyBoard){
            alert("Type correct dog's age!!");
            focus('');
            return false;
        }
    }
    
    function dogPounds(e){
        key=e.keyCode || e.which;
        keyBoard=String.fromCharCode(key).toLocaleLowerCase();
        letters=" lbs1234567890";
        specialLetters="8-37-38-46";
        specialKeyBoard=false;
        for(var i in specialLetters){
            if(key==specialLetters[i]){
                specialKeyBoard=true;
                break;
            }
        }
        if(letters.indexOf(keyBoard)==-1 && !specialKeyBoard){
            alert("Type correct dog's weight!!");
            focus('');
            return false;
        }
    }
    
    function dogColor(e){
        key=e.keyCode || e.which;
        keyBoard=String.fromCharCode(key).toLocaleLowerCase();
        letters=" abcdefghijklmnopqrstuvwxyz-";
        specialLetters="8-37-38-46";
        specialKeyBoard=false;
        for(var i in specialLetters){
            if(key==specialLetters[i]){
                specialKeyBoard=true;
                break;
            }
        }
        if(letters.indexOf(keyBoard)==-1 && !specialKeyBoard){
            alert("Type correct dog's color!!");
            focus('');
            return false;
        }
    }
        
    function dogCategory(e){
        key=e.keyCode || e.which;
        keyBoard=String.fromCharCode(key).toLocaleLowerCase();
        letters="PUPPYRENTpuppyrent";
        specialLetters="8-37-38-46-164";
        specialKeyBoard=false;
        for(var i in specialLetters){
            if(key==specialLetters[i]){
                specialKeyBoard=true;
                break;
            }
        }
        if(letters.indexOf(keyBoard)==-1 && !specialKeyBoard){
            alert("Type correct dog's category (PUPPY or RENT!!");
            focus('');
            return false;
        }
    }
    
    function dogPrice(e){
        key=e.keyCode || e.which;
        keyBoard=String.fromCharCode(key).toLocaleLowerCase();
        letters=" 1234567890.$DOLLARS";
        specialLetters="8-37-38-46";
        specialKeyBoard=false;
        for(var i in specialLetters){
            if(key==specialLetters[i]){
                specialKeyBoard=true;
                break;
            }
        }
        if(letters.indexOf(keyBoard)==-1 && !specialKeyBoard){
            alert("Type correct price, example: $ 5555.00!!!");
            focus('');
            return false;
        }
    }
    
    function dogComments(e){
        key=e.keyCode || e.which;
        keyBoard=String.fromCharCode(key).toLocaleLowerCase();
        letters=" abcdefghijklmnopqrstuvwxyz,!.ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890@()";
        specialLetters="8-37-38-46";
        specialKeyBoard=false;
        for(var i in specialLetters){
            if(key==specialLetters[i]){
                specialKeyBoard=true;
                break;
            }
        }
        if(letters.indexOf(keyBoard)==-1 && !specialKeyBoard){
            alert("Type correct dog's color!!");
            focus('');
            return false;
        }
    }
</script>
<body class="body">
    <div class="bodySing">
      <form class="form-group " method="post" action="RegDogs" enctype="multipart/form-data">

             <div class="espacioSign">
            <br >
             <s:label>Tag: </s:label>
            <br >
            <input class="form-control traspa1 " type="number" name="tagnumber" maxlength="5" onpaste="false">
            <br >
            <s:label>Name: </s:label>
            <br >
            <input class="form-control traspa2" placeholder="Dog's name" type="text" name="name" maxlength="30" onkeypress="return dogName(event)" onpaste="false">
            <br >
            <s:label>Age: </s:label>
            <br >
            <input class="form-control traspa3"  placeholder="Example: 11 months" type="text" name="age" maxlength="20" onkeypress="return dogAge(event)" onpaste="false">
            <br >
            <s:label>Weight: </s:label>
            <br >
            <input class="form-control traspa4" type="text" placeholder="Example: 55 lbs" name="pounds" maxlength="10" onkeypress="return dogPounds(event)" onpaste="false">
            <br >
             <s:label>Color: </s:label>
             <br >
             <input class="form-control traspa5" placeholder="Chocolatte" type="text" name="color" maxlength="20" onkeypress="return dogColor(event)" onpaste="false">
            
            <br >
            <input type="hidden" class="form-control traspa6" type="text" name="category" value="Sale" maxlength="5" onpaste="false">
          
            <s:label>Sex: </s:label>
            <br >
            <select name="sex" class="colorSelect">
                <option  selected>Female</option>
                <option class="colorSelect">Male</option>
            </select>
            <br>
            <br >
            <s:label>Vaccins: </s:label>
            <br >
            <input class="form-control traspa6" type="text" name="vaccins" placeholder="Type dog's already vaccinated" maxlength="30" >
            <br >
           <s:label>Price: </s:label>
            <br >
            <input type="text" class="form-control traspa6" name="price" maxlength="11" onkeypress="return dogPrice(event)" placeholder="Example: $ 5400.99" onpaste="false">
            <br >
           <s:label>Comments: </s:label>
            <br >
            <input class="form-control traspa6" type="text" onkeypress="return dogComments(event)" placeholder="Type extras dog's comment" name="comments" maxlength="255"  onpaste="false">
            <br >
            <s:label>Picture: </s:label>
            <br>
            <input class="form-control traspa6" type="file" name="picture" >
            <br >
            <input class="btn btn-default" type="submit" name="RegDog" title="Upload" value="Upload">
            
             </div>
        </form>
</div>
                        <div class="bodySingwelcoming">
                <div id="inf">
                    <p class="welcominSignInText">
                        Do you want to know more 
                        about us 
                        <br>and our pit bulls? you 
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
<footer class="footerSpace">
    <p class="followPosition" id="colorTexto">follow us: </p>
<ul>
	<a href="" title="Twitter" class="iconSocials"><img href="referencePrueba.html" src="../Images/Twitter-icon2.png" alt="" class="iconPosition"></a>
	<a href="https://www.facebook.com/" title="facebook" class="iconSocials"><img src="../Images/fbIcon.png" alt="" class="iconPosition"></a>
	<a href="" title="Instagram" class="iconSocials"><img href="referencePrueba.html" src="../Images/Instagram_icon.png" alt="" class="iconPosition"></a>
</ul>
	
	
	
</footer>
</html>
