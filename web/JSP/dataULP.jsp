<%-- 
    Document   : dataULP
    Created on : 28-nov-2017, 16:12:22
    Author     : Sakai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
  <head>
      <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
      <script src="http://code.jquery.com/jquery-latest.js"></script>
    <title>UNSTOPPABLE LEGION || PITBULLS</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="funciones.js"></script>
	<link rel="stylesheet" href="../css/style.css" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700" rel="stylesheet">
	<link rel="stylesheet" href="../css/categoria.css">
           <script type="text/javascript" src="../js/jquery-1.12.3.min.js"></script>
  <link rel="stylesheet" href="../js/jquery.dataTables.min.css">
	<link rel="stylesheet" href="../css/bootstrap.css" media="screen">
        
	<link rel="stylesheet" href="../css/font-awesome.css">
  	<link rel="stylesheet" type="text/css" href="../js/buttons.dataTables.min.css">
<script type="text/javascript" src="../js/java1.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript" src="../js/dataTables.buttons.min.js"></script>

<style>
.body{
    width: 100%;            
    height:80%;
    background-color:white;
}
#cont{
width: 94%;
height: 420px;
margin-top: 20%;
color: rgb(0, 0, 0);
margin: 0 auto;
}
table>thead>tr>th{

  background-color: rgb(113, 113, 117);
}
#btn1{

margin-left: 60%;
}
#btn2{

margin-left:3%;
}
#btn3{
 margin-left: 65.2%;   
}
#botones{

  width: 100%;
  height: 40px;
  margin-top: 5%;
}


#ti{
  margin-top: 15px;
color: white;
font-style: oblique;
}


  
#titulo{
    margin-top: 10%;
font-family: cursive;
text-align: center;

}
#colorTexto{
    color: whitesmoke;
    opacity: 0.7;
}

.posicionsubmenu{
    margin-left: -1.5%;
    position: absolute;
    
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
}
.gallerybox{
    margin-bottom:2%;
    margin-top: 1%;
    margin-left: 2%;
    color: white;
}
.commentsColumn{
    width: 9%;
    height: auto;
    margin-top: 1%;
    margin-left: 0;
    margin-right: 4%;
    text-align: justify;
}
 </style>
  </head>
    <script type="text/javascript" >
  $(document).ready(function() {
    var dataTable=  $('#tabla').DataTable( {
          "scrollY": 420,
          "scrollX": true,
           "paging": true
           
            ,
            "bInfo" : false,
            "ordering": false,
             "dom": 'tipr',
            "searching": true,
            "fixedHeader": false,
            "language": {
        "zeroRecords": "Have not data to show",
        "paginate": {
     "previous": "Previous",
     "next": "Next",
     }


    }

      } );
          $("#bu").keyup(function() {
        dataTable.search(this.value).draw();
    });

  
  } );

  </script>
      <header>
        <section class="headSectionDataULP">
            <section class="logoSection">
                <a href="../JSP/principalAdmin.jsp"><img src="../Images/UnsLogo.jpg" alt="" /></a>
            </section>
            <br>
            <h5 class="espacio" id="colorTexto"> American Bully Breeder!!!</h5>
            <div>
                <ul class="menu" class="menuDin">
                    <li><s:a action="Image" class="menuhover" id="colorTexto">KENNELS</s:a>
                        <ul class="posicionsubmenu">
                            <li><a href="http://localhost:8080/unstoppable/JSP/RegDog.jsp" class="menuhover" id="colorTexto">UPLOAD</a></li>
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
      <h2 id="titulo"> ULPS </h2>
      <aside id="botones">
<aside id="buscar">
    <input type="search" name="bu" placeholder="Search ulp......." id="bu" class="form-control">
</aside>
<button type="button" class="btn btn-success" id="btn2"  data-toggle="modal" data-target="#reg_dog">Upload <i class="ace-icon fa fa-arrow-right icon-on-right"></i></button>
</aside>
      <div id="cont" class="Gallery">
<table id="tabla" class="table table-bordered table-hover" cellspacing="0" width="100%" class="gallerybox">
  <thead>
<tr>
  <th><b>Tagnumber</b></th>
  <th  ><b>Name</b></th>
  <th ><b>Age</b></th>
  <th ><b>Pound</b></th>
  <th ><b>Color</b></th>
  <th ><b>Category</b></th>
  <th ><b>Sex</b></th>
  <th ><b>Vaccins</b></th>
  <th ><b>Price</b></th>
  <th ><b>Comments</b></th>
  <th ><b></b></th>
  
</tr>
</thead>
<tbody>
     	<s:iterator value="dataList">
    <tr> 
        <td width="4%"><s:property  value="tagnumber"/></td>  
        <td><s:property value="name"/></td>
        <td> <s:property value="age"/></td>
         <td> <s:property value="pounds"/></td>
          <td> <s:property value="color"/></td>
           <td> <s:property value="category"/></td>
            <td> <s:property value="sex"/></td>
             <td> <s:property value="vaccins"/></td>
              <td> <s:property value="price"/></td>
               <td class="commentsColumn"> <s:property value="comments"/></td>
               <td width="150"><img width="150" height="150" src="<s:url value='Image.action?tagnumber='/><s:property value='tagnumber' />"></td>
                  

        </tr>
          </s:iterator>
</tbody>
</table>
</div>
 

  </body>
<!-- Modal -->
<div class="modal fade" id="reg_dog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><i class='fa fa-plus'></i> Upload Dog</h4>
      </div>
      <form class="form-horizontal" method="post" action="RegDogs" enctype="multipart/form-data">
          <div class="modal-body">
          <div class="form-group">
            <label  class="col-sm-3 control-label">Tagnumber:</label>
            <div class="col-sm-8">
         <input type="number" name="tagnumber" maxlength="10" onkeypress="enteros()"  id="in1"  placeholder="Type tag's dog" class=" form-control" >
            </div>
          </div>
 <div class="form-group">
            <label  class="col-sm-3 control-label">Name:</label>
            <div class="col-sm-8">
        <input type="text" name="name" maxlength="29" onkeypress="return dogName(event)" onpaste="false"  id="in1"  placeholder="Dog's name" class=" form-control" >
            </div>
          </div>
           <div class="form-group">
            <label  class="col-sm-3 control-label">Age:</label>
            <div class="col-sm-8">
         <input type="text" name="age" maxlength="20" onkeypress="return dogAge(event)" onpaste="false" id="in1"  placeholder="Dog's age (quantity months)" class=" form-control" >
            </div>
          </div>
             <div class="form-group">
            <label  class="col-sm-3 control-label">Weight:</label>
            <div class="col-sm-8">
         <input type="text" name="pounds" maxlength="10" onkeypress="return dogPounds(event)" onpaste="false"  id="in1"  placeholder="Dog's pounds" class=" form-control" >
            </div>
          </div>
             <div class="form-group">
            <label  class="col-sm-3 control-label">Color:</label>
            <div class="col-sm-8">
         <input type="text" name="color" maxlength="20" onkeypress="return dogColor(event)" onpaste="false"   id="in1"  placeholder="Dog's color " class=" form-control" >
            </div>
          </div>
             <div class="form-group">
            
            <div class="col-sm-8">
         <input type="hidden" name="category" maxlength="5" onkeypress="letras_espa()"   id="in1"  placeholder="Category" class=" form-control" >
            </div>
          </div>
             <div class="form-group">
            <label  class="col-sm-3 control-label">Sex:</label>
            <select name="sex" class="colorSelect">
                <option  selected>Female</option>
                <option class="colorSelect">Male</option>
            </select>
          </div>
       <div class="form-group">
            <label  class="col-sm-3 control-label">Vaccins:</label>
            <div class="col-sm-8">
         <input type="text" name="vaccins" maxlength="29" onkeypress="letras_espa()" onpaste="false" id="in1"  placeholder="Type dog's already vaccinated" class=" form-control" >
            </div>
          </div>
             <div class="form-group">
            <label  class="col-sm-3 control-label">Price:</label>
            <div class="col-sm-8">
          <input type="text" name="price" maxlength="20" onkeypress="return dogPrice(event)" onpaste="false"   id="in1"  placeholder="Price " class=" form-control" >
            </div>
          </div>
             <div class="form-group">
            <label  class="col-sm-3 control-label">Comments:</label>
            <div class="col-sm-8">
                <input type="text" name="comments" onkeypress="return dogComments(event)" onpaste="false" maxlength="200" id="in1"  placeholder="Comments about dog" class=" form-control" >
            </div>
          </div>
             <div class="form-group">
            <label  class="col-sm-3 control-label">Picture:</label>
            <div class="col-sm-8">
          <input type="file" name="picture"  id="in1" class=" form-control" >
            </div>
          </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary" id="guardar_datos">Save Dog</button>
        </div>
          </div>
      </form>
    </div>
  </div>
</div>
<footer class="footerSpaceDataULP">
    <p class="followPosition" id="colorTexto">follow us: </p>
    <ul>
	<a href="" title="Twitter" class="iconSocials"><img src="../Images/Twitter-icon2.png" class="iconPosition"></a>
	<a href="https://www.facebook.com" title="facebook" class="iconSocials"><img src="../Images/fbIcon.png" class="iconPosition"></a>
	<a href="" title="Instagram" class="iconSocials"><img src="../Images/Instagram_icon.png" class="iconPosition"></a>
    </ul>
</footer>
</html>