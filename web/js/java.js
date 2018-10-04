
function letras(valor1){
if(valor1.keyCode >= 97 && valor1.keyCode <=122 || valor1.keyCode>=65 && valor1.keyCode<=90 ){
return true;
}else{
return false;
}
}

function enteros(){
  if(event.keyCode >= 49 && event.keyCode <=57 ){
  event.returnValue=true;
  }else{
  event.returnValue=0;
  }
}
var veces=1;
function decimales(valor){
 if(veces==1){
    if(valor.keyCode>=48 && valor.keyCode<=57){
      return true;
      }else{
       if(valor.keyCode==46){
          veces=0;
            return true;
            }else{
               return false;
       }
    }
   }
    if(veces==0){
        if(valor.keyCode>=48 && valor.keyCode<=57 ){
             veces=0;
                return true;
        }else{
            return false;
        }
      }
    }


function letras_espa(){
if(event.keyCode >= 97 && event.keyCode <=122 || event.keyCode>=65 && event.keyCode<=90 ||  event.keyCode==32  ){
event.returnValue=true;
}else{
event.returnValue=0;
}
}
function letras_numeros(){
if(event.keyCode >= 97 && event.keyCode <=122 || event.keyCode>=65 && event.keyCode<=90 ||  event.keyCode==32 || event.keyCode >= 48 && event.keyCode <=57   ){
event.returnValue=true;
}else{
event.returnValue=0;
}
}


function abrirMensaje(){
var mensaje = document.getElementById("mensaje");
mensaje.style.display = "block";
    animacion(mensaje);
   document.getElementById("btn1").style.marginRight="15%";
    document.getElementById("btn1").style.transition = ("all 10s ease-in");
   document.getElementById("btn2").style.marginLeft="15%";
    document.getElementById("btn2").style.transition = ("all 10s ease-out");
}

function cerrarMensaje(){
var mensaje = document.getElementById("mensaje");
mensaje.style.display = "none";
var a=document.getElementById("cont");
a.style.textAlign="center";

}

function animacion(mensaje){
 mensaje.style.height="0%";
    setTimeout(desplegar, 10,mensaje,0);
}

function desplegar(mensaje,conteo){

   if(conteo<25){

    setTimeout(desplegar, 100,mensaje, conteo + 1);
   }

    mensaje.style.height= conteo + "%";


}

function abrirMensaje1(){
var mensaje = document.getElementById("cajita");
mensaje.style.display = "block";

}
function cerrarMensaje1(){
var mensaje = document.getElementById("cajita");
mensaje.style.display = "none";


}

function reloj(){ 
var fh = new Date();
 var horas = fh.getHours();
 var minutos = fh.getMinutes();
 var segundos = fh.getSeconds();
    
if(horas<=12){   
    hr=new String (horas)
    if(hr.length==1)
    horas="0" + horas;
    
     min=new String (minutos)
    if(min.length==1)
    minutos="0" + minutos;
    
     seg=new String (segundos)
    if(seg.length==1)
    segundos="0" + segundos;
    
    res=horas + ":" + minutos + ":" + segundos +" "+"AM";
    document.form_reloj.time.value=res;
    setTimeout("reloj()",1000)
}
        
if(horas>=12){   
    hr=new String (horas)
    if(hr.length==1)
    horas=horas;
    
     min=new String (minutos)
    if(min.length==1)
    minutos="0" + minutos;
    
     seg=new String (segundos)
    if(seg.length==1)
    segundos= "0" + segundos;
    
    res=horas + ":" + minutos + ":" + segundos +" "+"PM";
    document.form_reloj.time.value=res;
    setTimeout("reloj()",1000)
}
    
 var dia = fh.getDate();
 var mes = fh.getMonth();
 var anio = fh.getFullYear();
    
dy=new String (dia)
    if(dy.length==1)
    dia="0" + dia;
    
     m=new String (mes)
    if(m.length==1)
    mes="0" + mes;
    

    res= dia+"/"+(mes+1)+ "/"+anio;
    document.form_fecha.fecha.value=res;
    
    
}