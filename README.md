# FiapBurger Infraestrutura de Banco de Dados

Este projeto, FiapBurger, provisiona a infraestrutura necessária para um banco de dados PostgreSQL no AWS RDS usando Terraform. O banco de dados é projetado para suportar um sistema de gerenciamento de pedidos para uma lanchonete, permitindo operações como gerenciamento de pedidos, clientes, produtos e acompanhamento do status dos pedidos.

## Estrutura do Projeto

O repositório está organizado da seguinte forma:

/
├── .github/workflows/ # Contém os arquivos de configuração para CI/CD
├── database/
│ ├── migrations/ # Scripts SQL para migrações do banco de dados
│── main.tf
├── variables.tf
│── outputs.tf
│── versions.tf
└── README.md

## Funcionalidades de Negócio

O banco de dados do FiapBurger suporta as seguintes funcionalidades de negócio:

- **Gestão de Produtos**: Inclui o cadastro de produtos, categorias e a gestão de inventário.
- **Gestão de Pedidos**: Permite criar, atualizar e acompanhar pedidos, incluindo o status do pedido (aberto, confirmado, em preparo, pronto para retirada, etc.).
- **Gestão de Clientes**: Gerenciamento de informações dos clientes, como nome, email e CPF.
- **Registro de Histórico**: Mantém um registro de todas as alterações no status do pedido para acompanhamento.

## Pré-requisitos

- Terraform (versão especificada no `versions.tf`)
- Acesso à AWS com permissões para criar recursos RDS, VPC, etc.
- Cliente SQL para execução de migrações de banco de dados (opcional, se migrações automáticas estiverem configuradas no CI/CD)

## Configuração e Uso

1. **Configuração Inicial do Terraform**:
    - Execute `terraform init` para inicializar o projeto Terraform.
    - Use `terraform plan` para revisar as mudanças planejadas.
    - Aplique a infraestrutura com `terraform apply`.

2. **Executando Migrações de Banco de Dados**:
    - Após a infraestrutura estar pronta, migre o esquema do banco de dados utilizando os scripts em `database/migrations`.
    - Isso pode ser feito manualmente ou através do pipeline de CI/CD configurado.

3. **Verificação**:
    - Após a aplicação das migrações, verifique no banco de dados se todas as tabelas e sequências foram criadas corretamente.

## CI/CD

O projeto utiliza GitHub Actions para automatizar o processo de CI/CD, que inclui:

- Verificação de formatação do Terraform.
- Execução do `terraform plan` em Pull Requests para revisão.
- Aplicação automática do `terraform apply` para mudanças na branch `main`.
- Execução das migrações de banco de dados como parte do processo de deployment.

Veja `.github/workflows/terraform-pr-check-main.yaml` para detalhes da configuração do pipeline.

## Contribuindo

Para contribuir com o projeto FiapBurger:

1. Faça um fork do repositório.
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`).
3. Faça commit de suas mudanças (`git commit -m 'Add some AmazingFeature'`).
4. Faça push para a branch (`git push origin feature/AmazingFeature`).
5. Abra um Pull Request.


## Link do Repositório

[FiapBurger Infra DB](https://github.com/FiapBurger/fiap-burger-infra-db)
