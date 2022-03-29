<?php

$nome = filter_input(INPUT_POST, 'nome');
$email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
$telefone = filter_input(INPUT_POST, 'telefone');
$datanasc = filter_input(INPUT_POST, 'datanasc');
$pais = filter_input(INPUT_POST, 'pais');
$cep = filter_input(INPUT_POST, 'cep', FILTER_SANITIZE_EMAIL);
$uf = filter_input(INPUT_POST, 'uf');
$cidade = filter_input(INPUT_POST, 'cidade');



include_once("conexao.php");

$result_pessoa = "INSERT INTO pessoa (Nome, Email, Telefone, DataNascimento) VALUES ('$nome', '$email', '$telefone', '$datanasc')";
$resultado_usuario = mysqli_query($mysqli, $result_pessoa);
echo mysqli_error($mysqli);
$result_endereco = "INSERT INTO Endereco (Pais, Estado, Cidade, numero_cep, Id_Pessoa) values ('$pais', '$uf', '$cidade', '$cep', LAST_INSERT_ID())";
$resultado_usuario = mysqli_query($mysqli, $result_endereco);
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