CREATE SEQUENCE "Categoria_id_seq" INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."categoria" (
    "id" VARCHAR(1) DEFAULT 'nextval(''"Categoria_id_seq"'')' NOT NULL,
    "nome" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(127) NOT NULL,
    CONSTRAINT "Categoria_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE TABLE "public"."cliente" (
    "nome" VARCHAR(80) NOT NULL,
    "email" VARCHAR(50) NOT NULL,
    "cpf" VARCHAR(11) NOT NULL,
    CONSTRAINT "cliente_cpf" PRIMARY KEY ("cpf")
) WITH (oids = false);

CREATE SEQUENCE "historico_id_seq" INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."historico" (
    "id" integer DEFAULT nextval('historico_id_seq') NOT NULL,
    "id_pedido" VARCHAR(36) NOT NULL,
    "id_status" VARCHAR(5) NOT NULL,
    "data_hora" timestamp NOT NULL,
    CONSTRAINT "historico_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE SEQUENCE "itens_pedido_id_seq" INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."itens_pedido" (
    "id" VARCHAR(36) NOT NULL,
    "produto" VARCHAR(36) NOT NULL,
    "pedido" VARCHAR(36) NOT NULL,
    CONSTRAINT "itens_pedido_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE TABLE "public"."pagamento" (
    "id" VARCHAR(1) NOT NULL,
    "nome" VARCHAR(50) NOT NULL,
    CONSTRAINT "pagamento_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE TABLE "public"."pedido" (
    "id" VARCHAR(36) NOT NULL,
    "senha" VARCHAR(10) NOT NULL,
    "id_status" VARCHAR(1) NOT NULL,
    "cpf" VARCHAR(11),
    "detalhes" VARCHAR(255),
    "valor_total" money NOT NULL,
    "data_hora_inicio" timestamp NOT NULL,
    "data_hora_fim" timestamp,
    "id_pagamento" VARCHAR(1),
    "id_satisfacao" VARCHAR(1),
    CONSTRAINT "pedido_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE TABLE "public"."produtos" (
    "id" VARCHAR(36) NOT NULL,
    "nome" VARCHAR(80) NOT NULL,
    "descricao" VARCHAR(127) NOT NULL,
    "url_imagem" VARCHAR(200) NOT NULL,
    "preco" character varying NOT NULL,
    "id_categoria" VARCHAR(36) NOT NULL,
    CONSTRAINT "produtos_id" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE TABLE "public"."satisfacao" (
    "id" VARCHAR(1) NOT NULL,
    "nome" VARCHAR(50) NOT NULL,
    CONSTRAINT "satisfacao_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE TABLE "public"."status" (
    "id" VARCHAR(1) NOT NULL,
    "descricao" VARCHAR(255) NOT NULL,
    CONSTRAINT "status_pkey" PRIMARY KEY ("id")
) WITH (oids = false);
