<?php

$ciaaerea = filter_input(INPUT_POST, 'ciaaerea');
$tipoaviao = filter_input(INPUT_POST, 'tipoaviao');
$cargamaxima = filter_input(INPUT_POST, 'cargamaxima');
$maxassentos = filter_input(INPUT_POST, 'maxassentos');

include_once("conexao.php");

$listagemcias = mysqli_query($mysqli, "SELECT Id_Companhia, Nome FROM companhia_aerea");
$listagemcias2 = mysqli_query($mysqli, "SELECT Id_Companhia, Nome FROM companhia_aerea");
$listagemavioescia = mysqli_query($mysqli, "SELECT TipoAviao, Id_Aviao FROM aviao ");
$listagemaeroportos = mysqli_query($mysqli, "SELECT Id_Aeroporto, Nome FROM pessoa WHERE Id_Aeroporto != '0'");
$listagemaeroportos2 = mysqli_query($mysqli, "SELECT Id_Aeroporto, Nome FROM pessoa WHERE Id_Aeroporto != '0'");

$search = mysqli_query($mysqli, "SELECT * FROM Companhia_Aerea WHERE Nome = '$ciaaerea'");
if (@mysqli_num_rows($search) > 0) {
} else if ($ciaaerea != NULL) {
    // faz inserção
    $result_ciaaerea = "INSERT INTO Companhia_Aerea (Nome) values ('$ciaaerea')";
    $resultado_usuario = mysqli_query($mysqli, $result_ciaaerea);
    echo mysqli_error($mysqli);
}

$search = mysqli_query($mysqli, "SELECT * FROM aviao WHERE TipoAviao = '$tipoaviao' AND CargaMaxima = '$cargamaxima' AND MaximoAssentos = '$maxassentos'");
if (@mysqli_num_rows($search) > 0) {
    echo 'Esse avião já existe no nosso banco de dados';
} else if ($tipoaviao != NULL) {
    // faz inserção
    $result_aviao = "INSERT INTO aviao (TipoAviao, CargaMaxima, MaximoAssentos) values ('$tipoaviao', '$cargamaxima', '$maxassentos')";
    $resultado_aviao = mysqli_query($mysqli, $result_aviao);
    echo mysqli_error($mysqli);
}

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dados</title>
    <link rel="stylesheet" type="text/css" href="meuestilo.css">

    <script type="text/javascript">
        function abrir() {
            document.getElementById('popup').style.display = 'block';
        }

        function fechar() {
            document.getElementById('popup').style.display = 'none';
        }

        function abriraviao() {
            document.getElementById('popupaviao').style.display = 'block';
        }

        function fecharaviao() {
            document.getElementById('popupaviao').style.display = 'none';
        }
    </script>

</head>

<body class="corpo">


    <div id="areaLogo">
        <img src="logo.jpg" alt="Airplane" id="logo">
    </div>

    <div id="fundo">
        <p id="titulo">Cadastrar Voo </p>
        <p id="ciaaerea3">Companhia Aerea:</p>
        <p id="aviao">Aviao: </p>
        <p id="aeroprtd">Aeroporto Partida: </p>
        <p id="aerochgd">Aeroporto Chegada: </p>



        <button onclick="abrir()" id="abrirpopup" class="efeito efeito-1">
            <p id="textobotao">Cadastrar Cia. Aerea</p>
        </button>

        <button onclick="abriraviao()" id="abrirpopupaviao" class="efeito efeito-1">
            <p id="textobotao">Cadastrar Avião</p>
        </button>

        <form method="POST" action="retorno2.php">

            <select id="ciaaerea2" name="ciaaerea3" onblur="listaavioescia(this.value);">
                <option>Selecione...</option> //abrimos um contador while para que enquanto houver registros ele continua no loopin
                <?php while ($prod = mysqli_fetch_array($listagemcias2)) { ?> <option value="<?php echo $prod['Id_Companhia'] ?>"><?php echo $prod['Nome'] ?></option> <?php } ?>
            </select>

            <select id="aviao" name="aviao">
                <option>Selecione...</option> //abrimos um contador while para que enquanto houver registros ele continua no loopin
                <?php while ($prod = mysqli_fetch_array($listagemavioescia)) { ?> <option value="<?php echo $prod['Id_Aviao'] ?>"><?php echo $prod['TipoAviao'] ?></option> <?php } ?>
            </select>

            <select class="custom-select" id="aeroprtd" name="aeroprtd">
                <option>Selecione...</option> //abrimos um contador while para que enquanto houver registros ele continua no loopin
                <?php while ($prod = mysqli_fetch_array($listagemaeroportos)) { ?> <option value="<?php echo $prod['Id_Aeroporto'] ?>"><?php echo $prod['Nome'] ?></option> <?php } ?>
            </select>

            <input type="datetime-local" name="datapartida" id="datapartida"></input>

            <select id="aerochgd" name="aerochgd">
                <option>Selecione...</option> //abrimos um contador while para que enquanto houver registros ele continua no loopin
                <?php while ($prod = mysqli_fetch_array($listagemaeroportos2)) { ?> <option value="<?php echo $prod['Id_Aeroporto'] ?>"><?php echo $prod['Nome'] ?></option> <?php } ?>
            </select>

            <input type="datetime-local" name="datachegada" id="datachegada"></input>

            <button type="submit" id="dois" class="efeito efeito-1">
                <p id="textobotao">Cadastrar</p>
            </button>
        </form>



        //cadastrar cia aerea
        <div id="popup" class="popup">
            <p id="textopopup1">Informe os dados aqui:</p>
            <p id="ciaaerea">Nome da Companhia:</p>
            <button onclick="fechar()" id="fecharpopup">
                <p id="textobotao2">X</p>
            </button>

            <form method="POST" action="cadastrovoo.php">
                <textarea type="text" name="ciaaerea" id="ciaaerea" class="inputUser" required autofocus></textarea>
                <button type="submit" id="btnpopup" class="efeito efeito-1">
                    <p id="textobotao">Cadastrar Cia.</p>
                </button>
            </form>

        </div>

        //cadastrar avião
        <div id="popupaviao" class="popupaviao">
            <p id="textopopup1">Informe os dados aqui:</p>
            <p id="nomeaviao">Nome do Avião:</p>
            <p id="ciaaerea2">Selecione a Cia. Aerea:</p>
            <p id="cargamaxima">Carga Máx:</p>
            <p id="maxassentos">Máx. Assentos::</p>
            <button onclick="fecharaviao()" id="fecharpopup">
                <p id="textobotao2">X</p>
            </button>

            <form method="POST" action="cadastrovoo.php">
                <textarea type="text" name="tipoaviao" id="tipoaviao" class="inputUser" required autofocus></textarea>
                <select id="ciaaerea" name="ciaaerea2">
                    <option>Selecione...</option> //abrimos um contador while para que enquanto houver registros ele continua no loopin
                    <?php while ($prod = mysqli_fetch_array($listagemcias)) { ?> <option value="<?php echo $prod['Id_Companhia'] ?>"><?php echo $prod['Nome'] ?></option> <?php } ?>
                </select>
                <textarea type="text" name="cargamaxima" id="cargamaxima" class="inputUser" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></textarea>
                <textarea type="text" name="maxassentos" id="maxassentos" class="inputUser" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"></textarea>
                <button type="submit" id="btnpopupaviao" class="efeito efeito-1">
                    <p id="textobotao">Cadastrar Avião</p>
                </button>
            </form>

        </div>

        <footer>
            <p id="final">2022 - Airplane</p>
        </footer>


    </div>
</body>

</html>