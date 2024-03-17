# Infraestrutura de Banco de Dados com Terraform

Este projeto provisiona uma infraestrutura de banco de dados AWS RDS usando Terraform. Ele é configurado para criar uma instância de banco de dados RDS MySQL em um ambiente seguro e privado.

## Pré-requisitos

- Terraform v0.14 ou superior
- Conta AWS
- AWS CLI configurado localmente

## Configuração Inicial

1. Clone o repositório para a sua máquina local:

    ```
    git clone https://github.com/FiapBurger/fiap-burger-infra-db.git
    ```

2. Navegue até o diretório do projeto:

    ```
    cd environments
    ```

3. Inicialize o Terraform:

    ```
    terraform init
    ```

Isso irá baixar todos os providers necessários e preparar o projeto do fiap burger para o primeiro uso.


### GitHub Actions Workflows

- `terraform-pr-check-main.yaml`: Define o pipeline de integração e entrega contínua, automatizando a formatação do Terraform, o planejamento, a aplicação e a execução de migrações do banco de dados.

### Diretório de Database

- `migrations/`: Contém os scripts SQL para a criação e atualização do esquema do banco de dados.

### Diretório de Terraform

-  Contém arquivos Terraform para a criação e gestão de uma instância do PostgreSQL no AWS RDS.

## Pré-requisitos

- Terraform instalado na sua máquina local.
- Conta AWS com as permissões necessárias para criar os recursos especificados.
- AWS CLI configurado com credenciais apropriadas.
- (Opcional) Ferramenta de migração de banco de dados, se você não estiver executando migrações manualmente.


### Executando Migrações de Banco de Dados

1. Após a infraestrutura do banco de dados estar pronta, execute as migrações necessárias:

    ```bash
    psql -h [endpoint-do-rds] -U [usuario] -d [nome-do-banco] -a -f database/migrations/01_create_tables.sql
    ```

## Contribuição

Sinta-se à vontade para contribuir com o projeto. Faça um fork do repositório, faça suas alterações e envie um Pull Request.

