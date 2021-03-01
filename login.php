<?php
    include "conecta.php";
    $email = $_POST['email'];
    $senha = $_POST['senha'];
        
                 $res2 = $con->query("SELECT * FROM usuario  where email ='$email' and senha='$senha'");
                 $registro2=$res2->fetchAll();
                 $linhas2 = sizeof($registro2);
                 
                 $res = $con->query("SELECT * FROM ADM  where email ='$email' and senha='$senha'");
                 $registro=$res->fetchAll();
                 $linhas = sizeof($registro);              
                 //entarndo no usuario commun 
                 if($linhas2 != 0  && $linhas == 0)
                 {
                    header("Location: inicio.html");
                 }              
if($linhas != 0 and $linhas2 == 0)
   {         
    header("Location: menu_adm.html");   
   }	
   if($linhas == 0 && $linhas2 ==0)
   { 
        echo"<script>alert('Não consta no sistema ');</script>";
        header("Location:index.php");
        
        
   }    
?>













