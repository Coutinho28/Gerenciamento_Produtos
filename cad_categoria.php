<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="css/estilo.css"> 
    <title>Document</title>
</head>
<body>
    <div  class="container-fluid">          
        <div id="login">        
            <h3>Cadastro de categoria </h3>
          <form method="POST" action="">
           <div  class="form-row">
                <div class="col-11">
                    <div class="form-group">  
                      <input id="usuario" type="text" class="form-control" name="nome_categoria" placeholder="Email" style="margin-left: 12px" >
                    </div>
                </div>
            </div>
            
              <input type="submit" name="entar" class="btn btn-primary" value="Cadastrar" id="btn-login">
              <a id="adm" href="menu_adm.html"><em>Volta</em></a>
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
          $nome_categoria = $_POST['nome_categoria'];
          
          $res2 = $con->query("SELECT * FROM categoria where nome_categoria ='$nome_categoria'");
              $registro2=$res2->fetchAll(); 
              $linhas2 = sizeof($registro2);
                  if ($linhas2 == 0) {
                    $res3 = $con->query("INSERT INTO categoria (id_cat ,nome_categoria)
                        VALUES(null, '$nome_categoria' )");
                        echo"<script>alert('Cadastrado com Sucesso !!');</script>";
                       
                  }
                  else
                  {
                    echo"<script>alert('Errro ao cadastrar !!');</script>"; 
                  }




?>