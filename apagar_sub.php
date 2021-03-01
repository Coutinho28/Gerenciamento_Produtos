<?php
session_start();
include_once("conexao.php");
$id_sub = filter_input(INPUT_GET, 'id_sub', FILTER_SANITIZE_NUMBER_INT);
if(!empty($id_sub)){
	$result_usuario = "DELETE FROM subCategoria WHERE id_sub='$id_sub'";
	$resultado_usuario = mysqli_query($conn, $result_usuario);
	if(mysqli_affected_rows($conn)){
		$_SESSION['msg'] = "<p style='color:green;'>Usuário apagado com sucesso</p>";
		header("Location: lista_sub.php");
	}else{
		
		$_SESSION['msg'] = "<p style='color:red;'>Erro o usuário não foi apagado com sucesso</p>";
		header("Location: lista_sub.php");
	}
}else{	
	$_SESSION['msg'] = "<p style='color:red;'>Necessário selecionar um usuário</p>";
	header("Location: lista_sub.php");
}
