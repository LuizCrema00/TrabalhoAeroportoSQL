<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
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
          Acesse o sistema de gestão!
        </p>
        <form action="cadastropessoa.php">
          <button type="submit" id="paginainicial1" class="efeito efeito-1">
            <p id="textobotao">Cadastrar Pessoa</p>
          </button>
        </form>
        <form action="cadastrovoo.php">
        <button type="submit" id="paginainicial2" class="efeito efeito-1">
            <p id="textobotao">Cadastrar Voo</p>
          </button>
        </form>
        <form action="passagens.php">
        <button type="submit" id="paginainicial3" class="efeito efeito-1">
            <p id="textobotao">Passagens</p>
          </button>
        </form>
        <form action="funcionarios.php">
        <button type="submit" id="paginainicial4" class="efeito efeito-1">
            <p id="textobotao">Funcionários</p>
          </button>
        </form>
      </section>
      <footer>
        <p id="final">2022 - Airplane</p>
      </footer>
    </div>
  </body>
</html>
