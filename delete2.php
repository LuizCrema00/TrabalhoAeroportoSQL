<?php

if (!empty($_GET['codigo'])) {
    include_once('conexao.php');


    $id = $_GET['codigo'];
    $result = mysqli_query($mysqli, "SELECT *  FROM funcionario WHERE Id_Funcionario=$id");

    if (@mysqli_num_rows($result) > 0) {
        $sqlDelete = mysqli_query($mysqli, "DELETE FROM funcionario WHERE Id_Funcionario =$id");
        $resultDelete = mysqli_query($mysqli, $sqlDelete);
        echo mysqli_error($mysqli);
    }
    header('Location: funcionarios.php');
}