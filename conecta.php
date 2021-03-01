<?php

$servidor ="localhost";
$usuario_bd="root";
$senha_bd="";
$banco = "kcb";
$con = new PDO("mysql:host=$servidor;dbname=$banco", $usuario_bd, $senha_bd);
?>