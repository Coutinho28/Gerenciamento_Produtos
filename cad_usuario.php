<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="css/estilo.css">  
    <title>Document</title>
</head>
<body>
    <div id="cadastro">
        <form method="POST" action=""> 
            
           <div class="form-row">  
               <div class="col-11">
                   <h3>cadastrar usuários</h3>
                  <div class="form-group">
                       <input type="text" id="nome" placeholder="Nome " name="nome" class="form-control" style="margin-left: 12px">
                   </div>
               </div>  
            </div> 
                   <div class="form-row">
                        <div class="col-11">
                           <input id="email" type="email" placeholder="Email" name="email" class="form-control" style="margin-left: 10px">                               
                        </div>   
                   </div>  
                   <div class="form-row">
                       <div class="col-11">
                          <input id="tele" type="text" placeholder="Telefone" name="telefone" class="form-control" style="margin-left: 10px">                               
                       </div>   
                  </div>   
                  <div class="form-row">
                   <div class="col-11">
                      <input id="senha" type="password" placeholder="Senha" name="senha" class="form-control" style="margin-left: 10px">                               
                      <input type="radio" name="opcao" value="sim"/> Usuário ADM<br />
                    <input type="radio" name="opcao" value="nao"/> Usuário Comum <br />
                   </div>   
              </div>    
              <div class="form-row">
               <div class="col-11">
                  
                  <small class="form-text text-multed" style="text-align: right;">
                 
                  </small>                           
               </div>   
          </div>       
          <input type="submit" name="cadastrar" class="btn btn-primary" value="cadastrar" id="btn-cadastro">
          <a id="adm" href="menu_adm.html"><em>Volta</em></a>
       </form>
           </form>
       </div>
       
   </div>
</body>
<footer>
    
    <script src="bootstrap/js/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
  </footer>
</html>

<?php

include "conecta.php";

include_once("conexao.php");

    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $telefone = $_POST['telefone'];
    $senha = $_POST['senha'];
    $opcao = $_POST['opcao'];
    $nao = 'nao'; 
    $sim = 'sim';
       
/**    
 * verificando se ja ta no sistema 
*/
   
$res2 = $con->query("SELECT * FROM usuario  where nome='$nome' and email='$email'");
$registro2=$res2->fetchAll();
$linhas2 = sizeof($registro2);
           
           if ($linhas2 == 0 && $opcao == $nao) {
            $res = $con->query("INSERT INTO usuario (id_usuario, nome, email, telefone, senha)
            VALUES (null, '$nome', '$email', '$telefone', '$senha')");             
            }
            if ($linhas2 == 0 && $opcao == $sim) {


                        $res = $con->query("INSERT INTO usuario (id_usuario, nome, email, telefone, senha)
                        VALUES (null, '$nome', '$email', '$telefone', '$senha')"); 


                        
                    $result_usuarios = "SELECT * FROM usuario LIMIT 1";
                    $resultado_usuarios = mysqli_query($conn, $result_usuarios);
                    while($row_usuario = mysqli_fetch_assoc($resultado_usuarios)){
                           $id_usuario=  $row_usuario['id_usuario'];
                
                $res4 = $con->query("INSERT INTO ADM (id_adm, nm_adm, email, senha, id_usuario)
                            VALUES(null , '$nome', '$email', '$senha','$id_usuario')");
                    }


            }








    



/*$res2 = $con->query("SELECT * FROM usuario  where nome='$nome' and email='$email'");
$registro2=$res2->fetchAll();
$linhas2 = sizeof($registro2);

$res = $con->query("SELECT * FROM ADM  where nm_adm='$nome'and  email ='$email'");
$registro=$res->fetchAll();
$linhas = sizeof($registro);

if($linhas2 == 0)
{ 
     
}   
if($linhas != 0 and $linhas2 == 0)
{         
    echo"<script>alert('Usuario apenas adm  ');</script>"; 
}	 


               
            
               
*/
       





?>