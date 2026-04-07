CREATE TABLE categorias (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao_categoria VARCHAR(1000),
    categorias_id_categoria INT,
    PRIMARY KEY (id_categoria),
    CONSTRAINT fk_categoria_pai
        FOREIGN KEY (categorias_id_categoria)
        REFERENCES categorias (id_categoria)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
