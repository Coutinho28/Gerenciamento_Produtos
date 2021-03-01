<?php
session_start();
include_once("conexao.php");
?>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="css/estilo.css"> 
		<title>CRUD - Listar</title>		
	</head>
	<body>
		
		<h1>Listar Produtos</h1>
		

<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Produto</th>
      <th scope="col">Descrição</th>
      <th scope="col">Valor</th>
	  <th scope="col">Status</th>
	  <th scope="col">categoria</th>
	  <th scope="col">Subcategoria</th>
	  <th scope="col">Ação</th>
    </tr>
  </thead>
 
  <tbody>
  <?php
		if(isset($_SESSION['msg'])){
			echo $_SESSION['msg'];
			unset($_SESSION['msg']);
		}
		
		//Receber o número da página
		$pagina_atual = filter_input(INPUT_GET,'pagina', FILTER_SANITIZE_NUMBER_INT);		
		$pagina = (!empty($pagina_atual)) ? $pagina_atual : 1;
		
		//Setar a quantidade de itens por pagina
		$qnt_result_pg = 100;
		
		//calcular o inicio visualização
		$inicio = ($qnt_result_pg * $pagina) - $qnt_result_pg;
		
		$result_usuarios = "SELECT * FROM Produtos LIMIT $inicio, $qnt_result_pg";
		$resultado_usuarios = mysqli_query($conn, $result_usuarios);
		while($row_usuario = mysqli_fetch_assoc($resultado_usuarios)){
/*			echo "ID: " . $row_usuario['id_produtos'] . "<br>";
			echo "Produto: " . $row_usuario['nome_produto'] . "<br>";
			echo "Descrição: " . $row_usuario['descri'] . "<br>";
			echo "Valor: " . $row_usuario['valor'] . "<br>";
			echo "Status: " . $row_usuario['sstatus'] . "<br>";
			echo "<a href='edit_usuario.php?id=" . $row_usuario['id'] . "'>Editar</a><br>";
			echo "<a href='proc_apagar_produto.php?id_produtos=" . $row_usuario['id_produtos'] . "'>Apagar</a><br><hr>";*/
		
?>
      <tr>
      <th scope="row"><?php echo $row_usuario['id_produtos']; ?></th>
      <td><?php echo $row_usuario['nome_produto'];  ?></td>
      <td><?php echo  $row_usuario['descri'];  ?></td>
      <td><?php echo "R$".$row_usuario['valor'];  ?></td>
	  <td></td>
	  <td><?php echo $row_usuario['categoria']; ?></td>
	  <td><?php echo $row_usuario['Subcateegoria']; ?></td>
	  <td><?php  echo "<a href='edit_prod.php?id_produtos=" . $row_usuario['id_produtos'] . "'>Editar</a><br>";
	  echo "<a href='proc_apagar_produto.php?id_produtos=" . $row_usuario['id_produtos'] . "'>Apagar</a><br>";  ?></td>
    </tr>
      
      
		<?php } ?>
  
</table>
<a id="adm" href="menu_adm.html"><em>Volta</em></a>
	</body>
</html>