<?php

if (!empty($_GET['codigo'])) {
    include_once('conexao.php');


    $id = $_GET['codigo'];
    $result = mysqli_query($mysqli, "SELECT *  FROM voo WHERE Id_VOO=$id");

    if (@mysqli_num_rows($result) > 0) {
        
        $sqlInsert2 = mysqli_query($mysqli, "INSERT INTO passagem (valor, Assento, Restricoes) values (219.90, 111, 'nenhuma')");
        $resultInsert2 = mysqli_query($mysqli, $sqlInsert2);
        echo mysqli_error($mysqli);
        $sqlInsert = mysqli_query($mysqli, "INSERT INTO infopassagem (fk_PASSAGEM_Id_Passagem, fk_VOO_Id_VOO ) values (LAST_INSERT_ID(), '$id')");
        $resultInsert = mysqli_query($mysqli, $sqlInsert);
        echo mysqli_error($mysqli);
    }
    header('Location: passagens.php');
}