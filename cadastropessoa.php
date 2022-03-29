<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dados</title>
    <link rel="stylesheet" type="text/css" href="meuestilo.css">

    <!-- Adicionando Javascript -->
    <script type="text/javascript">
        function limpa_formulário_cep() {
            //Limpa valores do formulário de cep.
            document.getElementById('cidade').value = ("");
            document.getElementById('uf').value = ("");
        }

        function meu_callback(conteudo) {
            if (!("erro" in conteudo)) {
                //Atualiza os campos com os valores.
                document.getElementById('cidade').value = (conteudo.localidade);
                document.getElementById('uf').value = (conteudo.uf);
            } //end if.
            else {
                //CEP não Encontrado.
                limpa_formulário_cep();
                alert("CEP não encontrado.");
            }
        }

        function pesquisacep(valor) {

            //Nova variável "cep" somente com dígitos.
            var cep = valor.replace(/\D/g, '');

            //Verifica se campo cep possui valor informado.
            if (cep != "") {

                //Expressão regular para validar o CEP.
                var validacep = /^[0-9]{8}$/;

                //Valida o formato do CEP.
                if (validacep.test(cep)) {

                    //Preenche os campos com "..." enquanto consulta webservice.
                    document.getElementById('cidade').value = "...";
                    document.getElementById('uf').value = "...";

                    //Cria um elemento javascript.
                    var script = document.createElement('script');

                    //Sincroniza com o callback.
                    script.src = '//viacep.com.br/ws/' + cep + '/json/?callback=meu_callback';

                    //Insere script no documento e carrega o conteúdo.
                    document.body.appendChild(script);

                } //end if.
                else {
                    //cep é inválido.
                    limpa_formulário_cep();
                    alert("Formato de CEP inválido.");
                }
            } //end if.
            else {
                //cep sem valor, limpa formulário.
                limpa_formulário_cep();
            }
        };
    </script>

</head>

<body class="corpo">


    <div id="areaLogo">
        <img src="logo.jpg" alt="Airplane" id="logo">
    </div>

    <div id="fundo">
        <p id="titulo">Cadastre-se</p>
        <p id="textodados">Informe seus dados aqui:</p>
        <p id="dados1">Nome</p>
        <p id="dados2">Data de Nascimento</p>
        <p id="dados3">E-mail</p>
        <p id="dados4">Telefone</p>
        <p id="textodados2">Endereço:</p>
        <p id="dados5">País:</p>
        <p id="dados6">CEP:</p>
        <p id="dados7">Estado:</p>
        <p id="dados8">Cidade:</p>

        <form method="POST" action="retorno.php">
            <textarea type="text" name="nome" id="nome" class="inputUser" required autofocus></textarea>
            <input name="datanasc" id="datanasc" type="date" class="inputUser" required></input>
            <input type="email" name="email" id="email" class="inputUser" required></input>
            <input type="tel" name="telefone" id="telefone" class="inputUser" required></input>
            <select class="custom-select" name="pais" id="pais">
                <option value="Açores ( Portugal)">Açores (Portugal)</option>
                <option value="Afeganistão">Afeganistão</option>
                <option value="África do Sul">África do Sul</option>
                <option value="Albânia">Albânia</option>
                <option value="Alemanha">Alemanha</option>
                <option value="Andorra">Andorra</option>
                <option value="Angola">Angola</option>
                <option value="Anguilla (Reino Unido)">Anguilla (Reino Unido)</option>
                <option value="Antígua e Barbuda">Antígua e Barbuda</option>
                <option value="Antilhas Holandesas (Países Baixos)">Antilhas Holandesas (Países Baixos)</option>
                <option value="Arábia Saudita">Arábia Saudita</option>
                <option value="Argélia">Argélia</option>
                <option value="Argentina">Argentina</option>
                <option value="Arménia">Arménia</option>
                <option value="Aruba (Países Baixos)">Aruba (Países Baixos)</option>
                <option value="Austrália">Austrália</option>
                <option value="Áustria">Áustria</option>
                <option value="Azerbaijão">Azerbaijão</option>
                <option value="Bahamas">Bahamas</option>
                <option value="Bahrein">Bahrein</option>
                <option value="Bangladesh">Bangladesh</option>
                <option value="Barbados">Barbados</option>
                <option value="Bélgica">Bélgica</option>
                <option value="Belize">Belize</option>
                <option value="Benim">Benim</option>
                <option value="Bermudas (Reino Unido)">Bermudas (Reino Unido)</option>
                <option value="Bielorrússia">Bielorrússia</option>
                <option value="Bolívia">Bolívia</option>
                <option value="Bósnia e Herzegovina">Bósnia e Herzegovina</option>
                <option value="Botswana">Botswana</option>
                <option value="Brasil">Brasil</option>
                <option value="Brunei">Brunei</option>
                <option value="Bulgária">Bulgária</option>
                <option value="Burkina Faso">Burkina Faso</option>
                <option value="Burundi">Burundi</option>
                <option value="Butão">Butão</option>
                <option value="Cabo Verde">Cabo Verde</option>
                <option value="Camarões">Camarões</option>
                <option value="Camboja">Camboja</option>
                <option value="Canadá">Canadá</option>
                <option value="Catar">Catar</option>
                <option value="Cazaquistão">Cazaquistão</option>
                <option value="Chade">Chade</option>
                <option value="Chile">Chile</option>
                <option value="Chipre">Chipre</option>
                <option value="Cisjordânia">Cisjordânia</option>
                <option value="Colômbia">Colômbia</option>
                <option value="Comores">Comores</option>
                <option value="Coreia do Norte">Coreia do Norte</option>
                <option value="Coreia do Sul">Coreia do Sul</option>
                <option value="Costa do Marfim">Costa do Marfim</option>
                <option value="Costa Rica">Costa Rica</option>
                <option value="Croácia">Croácia</option>
                <option value="Cuba">Cuba</option>
                <option value="Curaçao (Países Baixos)">Curaçao (Países Baixos)</option>
                <option value="Dinamarca">Dinamarca</option>
                <option value="Djibouti">Djibouti</option>
                <option value="Dominica">Dominica</option>
                <option value="Egito">Egito</option>
                <option value="El Salvador">El Salvador</option>
                <option value="Emirados Árabes Unidos">Emirados Árabes Unidos</option>
                <option value="Equador">Equador</option>
                <option value="Eritreia">Eritreia</option>
                <option value="Eslováquia">Eslováquia</option>
                <option value="Eslovênia">Eslovênia</option>
                <option value="Espanha">Espanha</option>
                <option value="Estados Federados da Micronésia">Estados Federados da Micronésia</option>
                <option value="Estados Unidos">Estados Unidos</option>
                <option value="Estónia">Estónia</option>
                <option value="Etiópia">Etiópia</option>
                <option value="Faixa de Gaza">Faixa de Gaza</option>
                <option value="Fiji">Fiji</option>
                <option value="Filipinas">Filipinas</option>
                <option value="Finlândia">Finlândia</option>
                <option value="França">França</option>
                <option value="Gabão">Gabão</option>
                <option value="Gâmbia">Gâmbia</option>
                <option value="Gana">Gana</option>
                <option value="Geórgia">Geórgia</option>
                <option value="Gibraltar (Reino Unido)">Gibraltar ( Reino Unido)</option>
                <option value="Granada">Granada</option>
                <option value="Grécia">Grécia</option>
                <option value="Gronelândia (Dinamarca)">Gronelândia (Dinamarca)</option>
                <option value="Guadalupe (França)">Guadalupe (França)</option>
                <option value="Guatemala">Guatemala</option>
                <option value="Guernesei (Reino Unido)">Guernesei (Reino Unido)</option>
                <option value="Guiana">Guiana</option>
                <option value="Guiné">Guiné</option>
                <option value="Guiné Equatorial">Guiné Equatorial</option>
                <option value="Guiné-Bissau">Guiné-Bissau</option>
                <option value="Haiti">Haiti</option>
                <option value="Honduras">Honduras</option>
                <option value="Hong Kong (República Popular da China)">Hong Kong (República Popular da China)</option>
                <option value="Hungria">Hungria</option>
                <option value="Iémen/Iêmen">Iémen/Iêmen</option>
                <option value="Ilha de Man (Reino Unido)">Ilha de Man (Reino Unido)</option>
                <option value="Ilha do Natal (Austrália)">Ilha do Natal (Austrália)</option>
                <option value="Ilha Norfolk (Austrália)">Ilha Norfolk (Austrália)</option>
                <option value="Ilhas Cayman (Reino Unido)">Ilhas Cayman (Reino Unido)</option>
                <option value="Ilhas Cocos (Keeling)(Austrália)">Ilhas Cocos (Keeling)(Austrália)</option>
                <option value="Ilhas Cook (Nova Zelândia)">Ilhas Cook (Nova Zelândia)</option>
                <option value="Ilhas Feroé (Dinamarca)">Ilhas Feroé (Dinamarca)</option>
                <option value="Ilhas Malvinas ou Malvinas (Reino Unido)">Ilhas Malvinas ou Malvinas (Reino Unido)</option>
                <option value="Ilhas Marshall">Ilhas Marshall</option>
                <option value="Ilhas Salomão">Ilhas Salomão</option>
                <option value="Ilhas Virgens Americanas (Estados Unidos)">Ilhas Virgens Americanas (Estados Unidos)</option>
                <option value="Ilhas Virgens Britânicas (Reino Unido)">Ilhas Virgens Britânicas (Reino Unido)</option>
                <option value="Índia">Índia</option>
                <option value="Indonésia">Indonésia</option>
                <option value="Irã">Irã</option>
                <option value="Iraque">Iraque</option>
                <option value="Irlanda">Irlanda</option>
                <option value="Islândia">Islândia</option>
                <option value="Israel">Israel</option>
                <option value="Itália">Itália</option>
                <option value="Jamaica">Jamaica</option>
                <option value="Japão">Japão</option>
                <option value="Jersey (Reino Unido)">Jersey (Reino Unido)</option>
                <option value="Jordânia">Jordânia</option>
                <option value="Kiribati">Kiribati</option>
                <option value="Kosovo">Kosovo</option>
                <option value="Kuwait">Kuwait</option>
                <option value="Laos">Laos</option>
                <option value="Lesoto">Lesoto</option>
                <option value="Letônia">Letônia</option>
                <option value="Líbano">Líbano</option>
                <option value="Libéria">Libéria</option>
                <option value="Líbia">Líbia</option>
                <option value="Liechtenstein">Liechtenstein</option>
                <option value="Lituânia">Lituânia</option>
                <option value="Luxemburgo">Luxemburgo</option>
                <option value="Macau (República Popular da China)">Macau (República Popular da China)</option>
                <option value="Macedónia">Macedónia</option>
                <option value="Madagáscar">Madagáscar</option>
                <option value="Madeira (Portugal)">Madeira (Portugal)</option>
                <option value="Maiote (França)">Maiote (França)</option>
                <option value="Malásia">Malásia</option>
                <option value="Malawi">Malawi</option>
                <option value="Maldivas">Maldivas</option>
                <option value="Mali">Mali</option>
                <option value="Malta">Malta</option>
                <option value="Marianas Setentrionais (Estados Unidos)">Marianas Setentrionais (Estados Unidos)</option>
                <option value="Marrocos">Marrocos</option>
                <option value="Martinica (França)">Martinica (França)</option>
                <option value="Maurícia">Maurícia</option>
                <option value="Mauritânia">Mauritânia</option>
                <option value="México">México</option>
                <option value="Moçambique">Moçambique</option>
                <option value="Moldávia">Moldávia</option>
                <option value="Mónaco">Mónaco</option>
                <option value="Mongólia">Mongólia</option>
                <option value="Montenegro">Montenegro</option>
                <option value="Montserrat (Reino Unido)">Montserrat (Reino Unido)</option>
                <option value="Myanmar">Myanmar</option>
                <option value="Namíbia">Namíbia</option>
                <option value="Nauru">Nauru</option>
                <option value="Nepal">Nepal</option>
                <option value="Nicarágua">Nicarágua</option>
                <option value="Níger">Níger</option>
                <option value="Nigéria">Nigéria</option>
                <option value="Niue (Nova Zelândia)">Niue (Nova Zelândia)</option>
                <option value="Noruega">Noruega</option>
                <option value="Nova Caledônia (França)">Nova Caledônia (França)</option>
                <option value="Nova Zelândia">Nova Zelândia</option>
                <option value="Omã">Omã</option>
                <option value="Países Baixos">Países Baixos</option>
                <option value="Palau">Palau</option>
                <option value="Panamá">Panamá</option>
                <option value="Papua-Nova Guiné">Papua-Nova Guiné</option>
                <option value="Paquistão">Paquistão</option>
                <option value="Paraguai">Paraguai</option>
                <option value="Peru">Peru</option>
                <option value="Pitcairn (Reino Unido)">Pitcairn (Reino Unido)</option>
                <option value="Polinésia Francesa (França)">Polinésia Francesa (França)</option>
                <option value="Polinésia Francesa (França)">Polinésia Francesa (França)</option>
                <option value="Polónia">Polónia</option>
                <option value="Porto Rico">Porto Rico</option>
                <option value="Portugal">Portugal</option>
                <option value="Quênia">Quênia</option>
                <option value="Quirguistão">Quirguistão</option>
                <option value="Reino Unido">Reino Unido</option>
                <option value="República Centro-Africana">República Centro-Africana</option>
                <option value="República Checa">República Checa</option>
                <option value="República Democrática do Congo">República Democrática do Congo</option>
                <option value="República do Congo">República do Congo</option>
                <option value="República Dominicana">República Dominicana</option>
                <option value="República Popular da China">República Popular da China</option>
                <option value="Reunião (França)">Reunião (França)</option>
                <option value="Roménia">Roménia</option>
                <option value="Ruanda">Ruanda</option>
                <option value="Rússia">Rússia</option>
                <option value="Saara Ocidental">Saara Ocidental</option>
                <option value="Samoa">Samoa</option>
                <option value="Samoa Americana (Estados Unidos)">Samoa Americana (Estados Unidos)</option>
                <option value="Santa Helena, Ascensão e Tristão da Cunha (Reino Unido)">Santa Helena, Ascensão e Tristão da Cunha (Reino Unido)</option>
                <option value="Santa Lúcia">Santa Lúcia</option>
                <option value="São Cristóvão e Nevis">São Cristóvão e Nevis</option>
                <option value="São Marino">São Marino</option>
                <option value="São Martinho (França)">São Martinho (França)</option>
                <option value="São Pedro e Miquelão (França)">São Pedro e Miquelão (França)</option>
                <option value="São Tomé e Príncipe">São Tomé e Príncipe</option>
                <option value="São Vicente e Granadinas">São Vicente e Granadinas</option>
                <option value="Senegal">Senegal</option>
                <option value="Serra Leoa">Serra Leoa</option>
                <option value="Sérvia">Sérvia</option>
                <option value="Seychelles">Seychelles</option>
                <option value="Singapura">Singapura</option>
                <option value="Síria">Síria</option>
                <option value="Somália">Somália</option>
                <option value="Sri Lanka">Sri Lanka</option>
                <option value="Suazilândia">Suazilândia</option>
                <option value="Sudão">Sudão</option>
                <option value="Sudão do Sul">Sudão do Sul</option>
                <option value="Suécia">Suécia</option>
                <option value="Suíça">Suíça</option>
                <option value="Suriname">Suriname</option>
                <option value="Svalbard e Jan Mayen (Noruega)">Svalbard e Jan Mayen (Noruega)</option>
                <option value="Tailândia">Tailândia</option>
                <option value="Taiwan">Taiwan</option>
                <option value="Tajiquistão">Tajiquistão</option>
                <option value="Tanzânia">Tanzânia</option>
                <option value="Timor-Leste">Timor-Leste</option>
                <option value="Togo">Togo</option>
                <option value="Tonga">Tonga</option>
                <option value="Toquelau (Nova Zelândia)">Toquelau (Nova Zelândia)</option>
                <option value="Trinidad e Tobago">Trinidad e Tobago</option>
                <option value="Tunísia">Tunísia</option>
                <option value="Turcas e Caicos (Reino Unido)">Turcas e Caicos (Reino Unido)</option>
                <option value="Turquemenistão">Turquemenistão</option>
                <option value="Turquia">Turquia</option>
                <option value="Tuvalu">Tuvalu</option>
                <option value="Ucrânia">Ucrânia</option>
                <option value="Uganda">Uganda</option>
                <option value="Uruguai">Uruguai</option>
                <option value="Uzbequistão">Uzbequistão</option>
                <option value="Vanuatu">Vanuatu</option>
                <option value="Vaticano">Vaticano</option>
                <option value="Venezuela">Venezuela</option>
                <option value="Vietname">Vietname</option>
                <option value="Wallis e Futuna (França)">Wallis e Futuna ( França)</option>
                <option value="Zâmbia">Zâmbia</option>
                <option value="Zimbabwe">Zimbabwe</option>
            </select>
            <textarea name="cep" type="text" id="cep" value="" size="10" maxlength="9" onblur="pesquisacep(this.value);"></textarea>
            <textarea name="uf" type="text" id="uf" size="2"></textarea>
            <textarea name="cidade" id="cidade" class="inputUser" required></textarea>

            <button type="submit" id="dois" class="efeito efeito-1">
                <p id="textobotao">Cadastrar</p>
            </button>
        </form>

        <footer>
            <p id="final">2022 - Airplane</p>
        </footer>


    </div>
</body>

</html>