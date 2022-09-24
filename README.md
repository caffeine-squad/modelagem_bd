# Modelagem do Banco de Dados
Repositório para modelagem do banco de dados

<div align="center">
  <img src="https://user-images.githubusercontent.com/6910054/191771969-42d34da1-b7d0-4a93-9801-7a9c25b33b90.png"/>
</div>

# Descrição das tabelas do modelo

<h2>Tabela <i>Orgão</i></h2>
A tabela <i>orgao</i> descreve dentro no modelo relacional elaborado, onde e quais atributos iremos manter no banco
sobre nosso sistema.
Nela possuímos os atributos/colunas:
<ul>
  <li>cod_orgao: chave primária da tabela</li>
  <li>tipo_orgao: se é tecido, órgão, etc.</li>
  <li>orgao: nome do órgão</li>
  <li>origem_orgao: de onde o órgão veio</li>
  <li>fk_usuario_cod_usuario: chave estrangeira que faz referência a tabela <i>usuario</i></li>
</ul>

<h2>Tabela <i>Usuário</i></h2>
A tabela <i>usuario</i> será na nossa base de dados a responsável por manter os dados dos usuários do sistema.
Nela possuímos os atributos/colunas:
<ul>
  <li>cod_usuario: chave primária da tabela</li>
  <li>nome: nome do usuário</li>
  <li>data_nascimento: coluna importante para futuramente saber as faixas etárias</li>
  <li>telefone: informação para contato</li>
  <li>cidade: informação importante juntamente com cep para elaborar mapas de regiões</li>
  <li>cep: coleta de informações com APIs</li>
  <li>doador e receptor: colunas onde o usuário poderá guardar se deseja ou não ser doador</li>
</ul>

<h2>Tabela <i>Instituições</i></h2>
Tabela <i>instituicoes</i> aqui teremos na nossa base informações sobre as instituições que recebem e realizam o processo de transplantes.
Nela possuímos os atributos/colunas:
<ul>
  <li>cod_instituicao: chave primária da tabela</li>
  <li>nome: nome da instituição: Hospital São Camilo, IJF e etc.</li>
  <li>telefone: para contatos</li>
  <li>cidade: informação importante juntamente com cep para elaborar mapas de regiões</li>
  <li>cep: coleta de informações com APIs</li>
 </ul>
 
<h2>Tabela <i>recebe</i></h2>
Tabela <i>recebe</i> tabela de ligação entre as tabelas </i>orgao</i> e <i>instituicoes</i>.
Nela possuímos os atributos/colunas:
<ul>
  <li>fk_instituicoes_cod_instituicao: chave estrangeira que faz referência a tabela <i>instituicoes</i></li>
  <li>fk_orgao_cod_orgao: chave estrangeira que faz referência a tabel <i>orgao</i> </li>
</ul>

<h2>Tabela <i>forum</i></h2>
Tabela <i>forum</i> nesta tabela tivemos a ideia para que a comunidade do sistema a ser desenvolvido pudessem ter a possibilidade
de compartilhar dúvidas e manter tópicos de perguntas e respostas associadas aos usuários que fizerem.
Nela possuímos os atributos/colunas:
<ul>
  <li>topico: onde o usuário poderá criar um tópico sobre determinado tema ou dúvida</li>
  <li>comentario: onde os usários poderão comentar sobre os tópicos criados</li>
</ul>

<h2>Tabela <i>admin</i></h2>
Tabela <i>admin</i> nesta tabela o intuito é criar um superusuario pré cadastrado no banco onde poderá fazer todas as alterações no sistema.
Nela possuímos os atributos/colunas:
<ul>
  <li>login: para o superusuario</li>
  <li>senha: senha de acesso ao sistema</li>
</ul>
