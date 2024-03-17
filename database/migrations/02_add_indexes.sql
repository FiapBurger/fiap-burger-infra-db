-- Adiciona um índice na coluna nome da tabela categoria
CREATE INDEX idx_categoria_nome ON public.categoria (nome);

-- Adiciona um índice na coluna email da tabela cliente
CREATE INDEX idx_cliente_email ON public.cliente (email);

-- Adiciona um índice na coluna data_hora da tabela historico
CREATE INDEX idx_historico_data_hora ON public.historico (data_hora);

-- Adiciona um índice na coluna produto da tabela itens_pedido
CREATE INDEX idx_itens_pedido_produto ON public.itens_pedido (produto);

-- Adiciona um índice na coluna nome da tabela produtos
CREATE INDEX idx_produtos_nome ON public.produtos (nome);
