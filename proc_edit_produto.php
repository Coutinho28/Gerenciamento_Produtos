<?php
session_start();
include_once("conexao.php");

$id_produtos = filter_input(INPUT_POST, 'id_produtos', FILTER_SANITIZE_NUMBER_INT);
$nome_produto = filter_input(INPUT_POST, 'nome_produto', FILTER_SANITIZE_STRING);
$descri = filter_input(INPUT_POST, 'descri', FILTER_SANITIZE_STRING);
$valor = filter_input(INPUT_POST, 'valor', FILTER_SANITIZE_NUMBER_INT);
$sstatus = filter_input(INPUT_POST, 'sstatus', FILTER_SANITIZE_NUMBER_INT);
$categoria = filter_input(INPUT_POST, 'categoria', FILTER_SANITIZE_STRING);
$subcategoria = filter_input(INPUT_POST, 'subcategoria', FILTER_SANITIZE_STRING);


//echo "Nome: $nome <br>";
//echo "E-mail: $email <br>";

$result_usuario = "UPDATE Produtos SET nome_produto='$nome_produto', descri='$descri', modified=NOW() WHERE id_produtos='$id_produtos'";
$resultado_usuario = mysqli_query($conn, $result_usuario);

if(mysqli_affected_rows($conn)){
	$_SESSION['msg'] = "<p style='color:green;'>Usuário editado com sucesso</p>";
	header("Location: lista_produto.php");
}else{
	$_SESSION['msg'] = "<p style='color:red;'>Usuário não foi editado com sucesso</p>";
	header("Location: editar.php?id=$id_produtos");
}
