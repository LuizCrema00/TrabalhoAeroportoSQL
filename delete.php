<?php

if (!empty($_GET['codigo'])) {
    include_once('conexao.php');


    $id = $_GET['codigo'];
    $result = mysqli_query($mysqli, "SELECT *  FROM voo WHERE Id_VOO=$id");

    if (@mysqli_num_rows($result) > 0) {
        $sqlDelete = mysqli_query($mysqli, "DELETE FROM voo WHERE Id_VOO =$id");
        $resultDelete = mysqli_query($mysqli, $sqlDelete);
        echo mysqli_error($mysqli);
        $sqlDelete2 = mysqli_query($mysqli, "DELETE FROM trecho_voo WHERE Id_VOO =$id");
        $resultDelete2 = mysqli_query($mysqli, $sqlDelete2);
        echo mysqli_error($mysqli);
    }
    header('Location: passagens.php');
}
