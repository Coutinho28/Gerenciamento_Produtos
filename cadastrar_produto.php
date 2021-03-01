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

    <div class="container-fluid">
        <div id="cadastro">
           <form method="POST" action=""> 
               
              <div class="form-row"> 
                  <h3>cadastro de produtos </h3> 
                  <div class="col-11">
                     <div class="form-group">
                          <input type="text" id="nome" placeholder="Nome " name="nome_produto" class="form-control" style="margin-left: 12px">
                      </div>
                  </div>  
               </div> 
                      <div class="form-row">
                           <div class="col-11">
                              <input id="email" type="text" placeholder="descrição " name="descri" class="form-control" style="margin-left: 10px">                               
                           </div>   
                      </div>  
                      <div class="form-row">
                          <div class="col-11">
                             <input id="tele" type="text" placeholder="valor" name="valor" class="form-control" style="margin-left: 10px">                               
                          </div>   
                     </div>   
                     <div class="form-row">
                      <div class="col-11">
                         <input id="senha" type="text" placeholder="Status" name="sstatus" class="form-control" style="margin-left: 10px">                               
                      

                         <select name="categoria" id="categoria" class="form-control input-lg" 
                         data-live-search="true" >
                         <option>Escolha</option>

                         <?php 
        include "conexao.php";
       $result = "SELECT nome_categoria FROM categoria";
       $resultado = mysqli_query($conn, $result);

       while($row = mysqli_fetch_assoc($resultado)) {
         echo '<option name ="'.$row['nome_categoria'].'"> '.$row['nome_categoria'].' </option>';
       }
    ?>
                        </select>


                         <select name="nome_sub" id="subcategoria" class="form-control input-lg" 
                         data-live-search="true" title="Selecione a Subcategoria">

                         <option>Escolha</option>
                         <?php 
        include "conexao.php";
       $result = "SELECT nome_sub FROM subCategoria";
       $resultado = mysqli_query($conn, $result);

       while($row = mysqli_fetch_assoc($resultado)) {
         echo '<option name ="'.$row['nome_sub'].'"> '.$row['nome_sub'].' </option>';
       }
    ?>
                        
                        
                        </select>
             </div>   
                 </div>    
                 <div class="form-row">
                  <div class="col-11">
                     
                     <small class="form-text text-multed" style="text-align: right;">
                      <a id="adm" href="menu_adm.html"><em>Voltar</em></a>
                     </small>                           
                  </div>   
             </div>       
             <input type="submit" name="cadastrar" class="btn btn-primary" value="cadastrar" id="btn-cadastro">
          </form>
             
          </div>
          
      </div>    
      <footer>
      <script src="../bootstrap/js//jquery.js" ></script>
      <script src="../bootstrap/js/bootstrap.bundle.min.js" ></script>
      </footer>
</body>
</html>


<?php
include "conecta.php";
$nome_produto= $_POST['nome_produto'];
$descri= $_POST['descri'];
$valor= $_POST['valor'];
$sstatus= $_POST['sstatus'];
$nome_categoria= $_POST ['categoria'];
$nome_sub = $_POST['nome_sub'];
                            
           
                
$res = $con->query("SELECT * FROM Produtos WHERE nome_produto='$nome_produto' and descri='$descri' 
and valor = '$valor' and sstatus= '$sstatus' and categoria='$nome_categoria' and Subcateegoria='$nome_sub'");
        $registro= $res->fetchAll();
            $res2 = sizeof($registro);
            

            if ($res2 == 0) {
                $res1 = $con->query("INSERT INTO Produtos (id_produtos, nome_produto, descri, valor, sstatus, categoria, Subcateegoria)
                VALUES(null, '$nome_produto', '$descri' , '$valor', '$sstatus', '$nome_categoria', '$nome_sub' )");
                echo"Sucesso";
            }
            else{
                echo"<script>('Já ta no sistema ');<script>";
            }

?>
      
      
      
      
      
      
      
      
      