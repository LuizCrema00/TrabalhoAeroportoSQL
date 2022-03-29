<?php

include_once("conexao.php");

$consulta = "SELECT * FROM funcionario";
$con = $mysqli->query($consulta) or die($mysqli->error);

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

<style>
    table {
        border-collapse: collapse;
        width: 100%;
        background-color: whitesmoke;
    }

    th,
    td {
        padding: 8px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }

    tr:hover {
        background-color: #ddd;
    }
</style>

<body class="corpo">
    <table>
        <tr>
            <th>Id_Funcionario</th>
            <th>Nome</th>
            <th>Cargo</th>
        </tr>

        <?php while ($dado = $con->fetch_array()) { ?>
            <tr>
                <td><?php echo $dado["Id_Funcionario"]; ?></td>
                <td><?php echo $dado["Nome"]; ?></td>
                <td><?php echo $dado["Cargo"]; ?></td>
                <td>
                    <a id="delete" href="delete2.php?codigo=<?php echo $dado["Id_Funcionario"]; ?>">X</a></td>

            </tr>
        <?php } ?>
    </table>
    <div id="fundo">

        <section>
            <form action="inicio.php">
                <button type="submit" id="paginainicial" class="efeito efeito-1">
                    <p id="textobotao">Voltar ao Menu</p>
                </button>
            </form>
        </section>
        <footer>
            <p id="final1">2022 - Airplane</p>
        </footer>
    </div>
</body>

</html>