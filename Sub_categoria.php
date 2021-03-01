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
<div  class="container-fluid">          
        <div id="login">        
            <h3>Cadastro de Subcategoria </h3>
          <form method="POST" action="">
           <div  class="form-row">
                <div class="col-11">
                    <div class="form-group">  
                      <input id="usuario" type="text" class="form-control" name="nome_sub" placeholder="Subcategoria" style="margin-left: 12px" >
                      <select  name="nome_categoria">
  <option>Escolha </option>
    <?php 
        include "conexao.php";
       $result = "SELECT nome_categoria FROM categoria";
       $resultado = mysqli_query($conn, $result);

       while($row = mysqli_fetch_assoc($resultado)) {
         echo '<option name ="'.$row['nome_categoria'].'"> '.$row['nome_categoria'].' </option>';
       }
    ?>
</select>

                    </div>
                </div>
            </div>
            
              <input type="submit" name="entar" class="btn btn-primary" value="Cadastrar" id="btn-login">
              <a id="adm" href="menu_adm.html"><em>Volta</em></a>
          </form>
        </div>
      </div>  
      <script src="../bootstrap/js//jquery.js" ></script>
      <script src="../bootstrap/js/bootstrap.bundle.min.js" ></script>
</body>
</html>
<?php
include "conecta.php";
        $nome_sub = $_POST['nome_sub'];
        $nome_categoria= $_POST['nome_categoria'];
                    $res = $con->query("SELECT * FROM subCategoria WHERE nome_sub='$nome_sub' and nome_categoria='$nome_categoria'");
                    $res2 = $res->fetchAll();
                            $linhas = sizeof($res2);
                            if($linhas == 0)
                            {
                                $res = $con->query("INSERT INTO subCategoria(id_sub, nome_categoria, nome_sub) 
                                VALUES(NULL, '$nome_categoria', '$nome_sub')");
                                
                                echo"<script>alert('Cadastrado com sucesso!!');</script>";
                            }
                            else
                            {
                                echo"<script>alert('ERRO ao cadastrar ou já ta no sistema !');</script>";
                            }
        
        
?>