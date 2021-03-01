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
<h1>Listar Categoria</h1>
		<?php
		
		
	/*	//Receber o número da página
		$pagina_atual = filter_input(INPUT_GET,'pagina', FILTER_SANITIZE_NUMBER_INT);		
		$pagina = (!empty($pagina_atual)) ? $pagina_atual : 1;
		
		//Setar a quantidade de itens por pagina
		$qnt_result_pg = 7;
		
		//calcular o inicio visualização
		$inicio = ($qnt_result_pg * $pagina) - $qnt_result_pg;*/
		?>
		<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Categoria</th>
	  <th scope="col">Ação</th>
    </tr>
  </thead>
 
  <tbody>
			<?php
	  include_once("conexao.php");
				  //Receber o número da página
			  $pagina_atual = filter_input(INPUT_GET,'pagina', FILTER_SANITIZE_NUMBER_INT);		
			  $pagina = (!empty($pagina_atual)) ? $pagina_atual : 1;
			  
			  //Setar a quantidade de itens por pagina
			  $qnt_result_pg = 100;
			  
			  //calcular o inicio visualização
			  $inicio = ($qnt_result_pg * $pagina) - $qnt_result_pg;
			  $result_usuarios = "SELECT * FROM categoria LIMIT $inicio, $qnt_result_pg";
			  $resultado_usuarios = mysqli_query($conn, $result_usuarios);
			  while($row_usuario = mysqli_fetch_assoc($resultado_usuarios)){
	  ?>
		  <tr>
			
			<td><?php echo $row_usuario['id_cat']; ?></td>
			<td><?php echo $row_usuario['nome_categoria']; ?></td>
			<td><?php  echo "<a href='edit_prod.php?id_produtos=" . $row_usuario['id_cat'] . "'>Editar</a><br>";
	  echo "<a href='proc_apagar_cat.php?id_cat=" . $row_usuario['id_cat'] . "'>Apagar</a><br>";  ?></td>
			
		  </tr>
		  <?php } ?>
		</tbody>
	  </table>		
	  <a id="adm" href="menu_adm.html"><em>Volta</a>
</body>
<script src="bootstrap/js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</html>