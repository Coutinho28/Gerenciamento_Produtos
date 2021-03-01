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
	
		<h1>Listar Usuário</h1>
		
		
		<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nome</th>
	  <th scope="col">E-mail</th>
      <th scope="col">Telefone</th>
      <th scope="col">Ações</th>
	  
    </tr>
  </thead>	
		
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
		
		$result_usuarios = "SELECT * FROM usuario LIMIT $inicio, $qnt_result_pg";
		$resultado_usuarios = mysqli_query($conn, $result_usuarios);
		while($row_usuario = mysqli_fetch_assoc($resultado_usuarios)){
			/*echo "ID: " . $row_usuario['id_usuario'] . "<br>";
			echo "Nome: " . $row_usuario['nome'] . "<br>";
			echo "E-mail: " . $row_usuario['email'] . "<br>";
			echo "<a href='edit_usuario.php?id=" . $row_usuario['id'] . "'>Editar</a><br>";
			echo "<a href='proc_apagar_usuario.php?id_usuario=" . $row_usuario['id_usuario'] . "'>Apagar</a><br><hr>";*/
				
		?>

<tbody>
    <tr>
      <th scope="row"><?php  echo $row_usuario['id_usuario'];?></th>
      <td><?php  echo $row_usuario['nome'];?></td>
      <td><?php  echo $row_usuario['email'];?></td>
      <td><?php  echo $row_usuario['telefone'];?></td>
	  <td><?php  echo "<a href='edit_produto.php?id_produtos=" . $row_usuario['id_produtos'] . "'>Editar</a><br>";
	  echo "<a href='proc_apagar_usuario.php?id_usuario=" . $row_usuario['id_usuario'] . "'>Apagar</a><br>";  ?></td>
    </tr>
    <?php } ?>
  </tbody>
		</table>
		<a id="adm" href="menu_adm.html"><em>Volta</a>
	</body>
	
	<script src="bootstrap/js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</html>