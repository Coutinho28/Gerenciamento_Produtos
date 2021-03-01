<?php
session_start();
include_once("conexao.php");
$id_produtos = filter_input(INPUT_GET, 'id_produtos', FILTER_SANITIZE_NUMBER_INT);
if(!empty($id_produtos)){
	$result_usuario = "DELETE FROM Produtos WHERE id_produtos='$id_produtos'";
	$resultado_usuario = mysqli_query($conn, $result_usuario);
	if(mysqli_affected_rows($conn)){
		$_SESSION['msg'] = "<p style='color:green;'>Produto apagado com sucesso</p>";
		header("Location: lista_produto.php");
	}else{
		
		$_SESSION['msg'] = "<p style='color:red;'>Erro o produto não foi apagado com sucesso</p>";
		header("Location: lista_produto.php");
	}
}else{	
	$_SESSION['msg'] = "<p style='color:red;'>Necessário selecionar um Produto</p>";
	header("Location: lista.php");
}
