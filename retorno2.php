<?php


$ciaaerea = filter_input(INPUT_POST, 'ciaaerea3');
$aviao = filter_input(INPUT_POST, 'aviao');
$aeroprtd = filter_input(INPUT_POST, 'aeroprtd');
$aerochgd = filter_input(INPUT_POST, 'aerochgd');
$datapartida = filter_input(INPUT_POST, 'datapartida');
$datachegada = filter_input(INPUT_POST, 'datachegada');


include_once("conexao.php");

$numtrecho_solicita = mysqli_query($mysqli, "SELECT NumTrecho, Id_AeroportoChegada, Id_AeroportoPartida FROM trecho WHERE (Id_AeroportoChegada = $aerochgd) AND  (Id_AeroportoPartida = $aeroprtd)");
$result_numtrecho = mysqli_fetch_array($numtrecho_solicita);
$numtrecho = $result_numtrecho['NumTrecho'];

$aeroprtd_solicita = mysqli_query($mysqli, "SELECT Nome FROM pessoa WHERE (Id_Aeroporto = $aeroprtd)");
$result_nomeaeroprtd= mysqli_fetch_array($aeroprtd_solicita);
$nomeaeroprtd = $result_nomeaeroprtd['Nome'];

$aerochgd_solicita = mysqli_query($mysqli, "SELECT Nome FROM pessoa WHERE (Id_Aeroporto = $aerochgd)");
$result_nomeaerochgd= mysqli_fetch_array($aerochgd_solicita);
$nomeaerochgd = $result_nomeaerochgd['Nome'];

$nomevoo = "$nomeaeroprtd x $nomeaerochgd";

$result_voo = "INSERT INTO voo (NomeVOO, Id_Aviao) VALUES ('$nomevoo', '$aviao')";
$resultado_voo = mysqli_query($mysqli, $result_voo);
echo mysqli_error($mysqli);
$result_trechovoo = "INSERT INTO trecho_voo (NumTrecho, Id_Voo) values ('$numtrecho', LAST_INSERT_ID())";
$resultado_trechovoo = mysqli_query($mysqli, $result_trechovoo);
echo mysqli_error($mysqli);
$result_aeroprtd = "INSERT INTO aeroportopartida (fk_Aeroporto_Id_Aeroporto, DataPartida) values ('$aeroprtd', '$datapartida')";
$resultado_aeroprtd = mysqli_query($mysqli, $result_aeroprtd);
echo mysqli_error($mysqli);
$result_aerochgd = "INSERT INTO aeroportochegada (fk_Aeroporto_Id_Aeroporto, DataChegada) values ('$aerochgd ', '$datachegada')";
$resultado_aerochgd = mysqli_query($mysqli, $result_aerochgd);
echo mysqli_error($mysqli);
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8" />-
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Airplane</title>
    <link rel="stylesheet" type="text/css" href="meuestilo.css" />
</head>

<body class="corpo">
    <div id="areaLogo">
        <img src="logo.jpg" alt="Airplane" id="logo" />
    </div>
    <div id="fundo">
        <section>
            <p id="textocentral">
                Cadastro realizado com sucesso!
            </p>
            <form action="inicio.php">
                <button type="submit" id="paginainicial" class="efeito efeito-1">
                    <p id="textobotao">Voltar ao Menu</p>
                </button>
            </form>
        </section>
        <footer>
            <p id="final">2022 - Airplane</p>
        </footer>
    </div>
</body>

</html>