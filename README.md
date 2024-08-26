# clone simplificado do banco de dados da Spotify

<details>
  <summary><strong>:memo: Habilidades</strong></summary><br />

  Neste projeto:

- Analisar se duas tabelas não normalizadas.

- Identificar modificações necessárias para que suas tabelas estejam adequadamente na 1ª, 2ª e 3ª Forma Normais.

- Criar um banco de dados a partir de uma planilha que contém tabelas e dados.

- Criar e modelar tabelas.

- Queries que passam pelos principais comandos SQL vistos até o momento.
</details>



## Orientações
<details>
<summary> 🐳 Início rápido com Docker Compose</summary><br>

```bash
docker-compose up -d
docker exec -it one_for_all bash
npm test # roda todos os testes
npm test -- -t "01" # rodando apenas o teste do requisito 01
```

<details>
<summary>🐳 Mais informações</summary><br>

O que cada comando faz:

- `docker-compose up -d`
  - Inicia os serviços `node` e `db`
    - Esses serviços irão inicializar um container chamado `one_for_all` e outro chamado `one_for_all_db`.
    - Ao iniciar pela primeira vez, o docker constrói a imagem do serviço `node`, instalando as dependências Node necessárias para a avaliação automatizada
- `docker exec -it one_for_all bash`
  - Acessa a linha de comando do container `one_for_all`
    - Isso dá acesso ao terminal interativo do container criado pelo compose, que está rodando em segundo plano
- `npm test`
  - Roda os testes do avaliador

> As credenciais de acesso ao banco de dados estão definidas no arquivo `docker-compose.yml`, e são acessíveis no container através das variáveis de ambiente `MYSQL_USER` e `MYSQL_PASSWORD`.

</details>
</details>
<details>
<summary>🖥️ Início rápido com apenas um container MySQL</summary><br>

> ⚠️ **Atenção**: É necessário criar um container MySQL e passar as credenciais através de variáveis de ambiente. Veja a [FAQ](./FAQ.md#rodando-o-projeto-localmente) para mais detalhes.
>
> ⚠️ O avaliador espera que a versão do `node` utilizada seja a 16.

```bash
npm install (dentro do container)
docker run -p 3306:3306 --name mysql_8 -e MYSQL_ROOT_PASSWORD=password --platform=linux/amd64 -d mysql:8.0.23 mysqld --default-authentication-plugin=mysql_native_password
MYSQL_USER=root MYSQL_PASSWORD=password MYSQL_HOSTNAME=localhost npm test # roda todos os testes
MYSQL_USER=root MYSQL_PASSWORD=password MYSQL_HOSTNAME=localhost npm test -- -t "01" # rodando apenas o teste do requisito 01
```

<details>
<summary>🖥️ Mais informações</summary><br>

O que cada comando faz:

- `npm install`
  - Instala as dependências Node necessárias para os testes do avaliador
- `docker run -p 3306:3306 --name mysql_8 -e MYSQL_ROOT_PASSWORD=password --platform=linux/amd64 -d mysql:8.0.23 mysqld --default-authentication-plugin=mysql_native_password`
  - Cria um container MySQL com as variáveis de ambiente definidas
- `MYSQL_USER=root MYSQL_PASSWORD=password MYSQL_HOSTNAME=localhost npm test`
  - Roda os testes do avaliador passando as variáveis de ambiente

</details>
</details>

