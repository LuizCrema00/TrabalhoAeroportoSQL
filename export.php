<?php  
      
	include_once("conexao.php");
    $consulta = "SELECT * FROM usuarios";
	$con = $mysqli->query($consulta) or die($mysqli->error);

	$arqexcel = "<meta charset = 'UTF-8'>";

	$arqexcel .= "<table>
            <tr>
                <td>Nome</td>
                <td>CNPJ</td>
                <td>E-mail</td>
                <td>Telefone</td>
                <td>Segmento</td>
                <td>Porte</td>
                <td>Q1</td>
                <td>Q2</td>
                <td>Q3</td>
                <td>Q4</td>
                <td>Q5</td>
                <td>Q6</td>
                <td>Sistema Licitação</td>
                <td>Nivel que quer atuar</td>
                <td>Municipio</td>
            </tr>";

            while ($dado = $con->fetch_array()) {
                $arqexcel .= "<tr>
                    <td>{$dado["nome"]}</td>
                    <td>{$dado["cnpj"]}</td>
                    <td>{$dado["email"]}</td>
                    <td>{$dado["telefone"]}</td>
                    <td>{$dado["segmento"]}</td>
                    <td>{$dado["porte"]}</td>
                    <td>{$dado["quest1"]}</td>
                    <td>{$dado["quest2"]}</td>
                    <td>{$dado["quest3"]}</td>
                    <td>{$dado["quest4"]}</td>
                    <td>{$dado["quest5"]}</td>
                    <td>{$dado["quest6"]}</td>
                    <td>{$dado["sistlicit"]}</td>
                    <td>{$dado["quest8"]}</td>
                    <td>{$dado["municipio"]}</td>
                </tr>";
            } 

			$arqexcel .= "
        </table>";

			header("Content-Type: application/xls");
			header("Content-Disposition:attachment; filename = relatorio.xls");
			echo $arqexcel;

