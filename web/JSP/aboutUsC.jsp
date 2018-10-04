<%-- 
    Document   : aboutUs
    Created on : 23-oct-2017, 19:52:12
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
}
.about{
 width: 78%;
 height: 78%;
 margin-top: 3%;
 position: top;
 margin-bottom: 3%;
 margin-left: 9%;   
 background-image: url(imagen4.jpg);
 opacity: 0.8;
 
}
.aboutText{
    position: absolute;
    width: 40%;
    height: 65%;
    margin-top: 2%;
    margin-bottom: 5%;
    margin-right: 45%;
    margin-left: 2%;
    background-color: black;
    opacity: 0.7; 
}
.textAbout{
    margin-left: 4%;
    margin-right: 4%;
    margin-top: 9%;
    font-size: 13pt;
    font-weight: 700;
    text-align: justify;
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
.footerSpaceb{
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
    <a href="http://localhost:8080/unstoppable/JSP/principalClient.jsp"><img title="HOME" src="../Images/UnsLogo.jpg"></a>
        
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
<body class="body">
    <div class="about">
        <section class="aboutText">
            <p id="colorTexto" class="textAbout">
               WELCOME TO UNSTOPPABLE LEGION PITBULLS!!!
               <br>
               WE ARE HOME OF THE MOST BEAUTIFUL PITBULLS YOU WILL EVER SEE.  
               HERE AT ULP WE BREED SOME OF THE MOST AMAZING DOGS IN THE WORLD.   
               THEY MAKE PHENOMENAL FAMILY DOGS AND EXCELLENT COMPANIONS.   
               OUR PITBULL PUPPIES LOOK LIKE SMALL LIONS AND WHEN PEOPLE SEE THEM FULL GROWN THEY ARE SPEECHLESS! 
               SO IF YOU ARE LOOKING FOR THE BIGGEST, MOST MUSCULAR, PITBULL WITH THE BEST TEMPERAMENT YOU HAVE COME TO THE RIGHT PLACE.
               
            </p>
        </section>
    </div>
    <div class="contract" id="colorTexto">
        <p class="textAbout">
            1. Seller guarantees pup to be delivered in good health, current on vaccinations, and free of Distemper, Parvo, Parainfluenza, and any life threatening genetic defect.
            <br>
            2. All puppies will have a current health certificate from a licensed Veterinary Clinic if being shipped on an airplane.
            <br>
            3. Puppies will be dewormed at time of shipping or pick up, and a normal deworming should follow as recommended by your vet. 1st two shots will be given along with one deworming. Follow up shots and deworming’s are the responsibility of the buyer. Any pup that develops an illness related to lack of shots or deworming will NOT be replaced.
            <br>
            4. Purchaser agrees to follow up with a Veterinary Clinic within 2 weeks of receiving the pup. At that time, if it is determined the pup has any of the above or if the pup is found to have a genetic defect, Unstoppable Legion Pitbulls will replace the pup. We reserve the right to ask for a second opinion on any findings by the said Vet.
            <br>
            5. Purchaser agrees to provide a safe home for their new pup and will not use the pup for any illegal activity. If at any time, the purchaser is found to be using the pup for illegal activity, Unstoppable Legion Pitbulls reserves the right to regain possession of the pup. We do not tolerate dog fighting, and WILL pursue legal action to regain rights to the pup.
            <br>
            6. A deposit is required to hold any puppy under the age of 4 weeks. Puppies are required to be paid for in full by 4 weeks of age. If at 4 weeks of age the pup has not been paid for in full, you will forfeit your deposit. If you change your mind on a pup, your deposit may be transferred to any available pup at that time. Deposits and payments are NON-REFUNDABLE.
            <br>
            7. Purchaser of a blue coated pup should understand that they are more prone to skin and coat problems. Unstoppable Legion Pitbulls do NOT guarantee and are not held responsible for skin or coat problems that are common among dogs with blue coloring.
            <br>
            8. By signing our agreement, you understand that if at any time you cannot longer care for your dog, you will contact Bossy Kennels. We will gladly take them back!
            <br>
            9. We do not guarantee against Hip or Elbow Dysplasia as these larger dogs are generally over 100 pounds and it is a polygenic trait that is affected by environmental factors, (i.e. feeding) as well as the fact that NO other XL breeders are OFA testing their studs. There is no way for us to breed to any outside studs with an official complete health tested line. We do not breed dogs with Hip Dysplasia, BUT the trait can pop up from a previous generation. There is no way for us to guarantee perfect hips in these animals. Buyer assumes all risk.  For more information and a better understanding of canine hip dysplasia click the following link: http://www.instituteofcaninebiology.org/blog/the-10-most-important-things-to-know-about-canine-hip-dysplasia.  Unstoppable Legion Pitbulls HIGHLY recommends buyer purchase Pet Insurance. Highly recommended companies for this breed are “Embrace” “Healthy Paws” & “Pet Plan”.
            <br>
            10.Unstoppable Legion Pitbulls reserves the right to include our kennel name on the puppy registration paperwork. All puppies purchased from Unstoppable Legion Pitbulls must keep their original paperwork and papers and names cannot be illegally altered. If puppy registration forms are lost after you have already received them, then Unstoppable Legion Pitbulls reserves the right to charge a $50.00 fee to the future owner to obtain the puppy registration form again.
            <br>
            11. Payments may be made with postal money orders, bank to bank wire, certified bank check, money gram, or western union. We accept deposits via PayPal but pup must be paid off with other means as PayPal charges a 4% fee. We will NOT accept any personal checks.
            <br>
            12. Any Deposit on any breeding is NON REFUNDABLE. If the breeding does not take, or the desired pick/ sex is not produced, deposit will be transferred to the repeat breeding of the sire and dam or another breeding of the customer's choice. If it is found that the puppy has a genetic defect within its first year of life, the client must return the puppy and Unstoppable Legion Pitbulls will replace the puppy with another puppy of equal value. However, no refund will be given. 


</p>
    </div> 
</body>
<footer class="footerSpaceb">
    <p class="followPosition" id="colorTexto">follow us: </p>
<ul>
	<a href="" title="" class="iconSocials"><img href="referencePrueba.html" src="../Images/Twitter-icon2.png" alt="" class="iconPosition"></a>
	<a href="https://www.facebook.com" title="facebook" class="iconSocials"><img src="../Images/fbIcon.png" alt="" class="iconPosition"></a>
	<a href="" title="" class="iconSocials"><img href="referencePrueba.html" src="../Images/Instagram_icon.png" alt="" class="iconPosition"></a>
</ul>
	
	
	
</footer>	


</html>
