CREATE DATABASE IF NOT EXISTS gestao_arvore_mercadologica;
USE gestao_arvore_mercadologica;

-- Tabela Principal: Árvore Mercadológica
CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    nivel ENUM('Departamento', 'Categoria', 'Subcategoria'), -- Ajuda a organizar a árvore
    id_pai INT, -- Campo que cria a hierarquia
    CONSTRAINT fk_no_pai FOREIGN KEY (id_pai) REFERENCES categorias(id_categoria)
);

select * from categorias;