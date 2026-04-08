#  Dicionário de Dados

## Tabela: `categorias`
**Descrição:** Armazena as categorias do sistema, permitindo uma estrutura de árvore (categorias e subcategorias).

| Atributo | Tipo | Chave | Descrição | Observações |
| :--- | :--- | :---: | :--- | :--- |
| **id_categoria** | INT | PK | Identificador único da categoria. | Auto-incremento (AI). |
| **nome_categoria** | VARCHAR(100) | - | Nome oficial da categoria. | Obrigatório (NOT NULL). |
| **descricao_categoria** | VARCHAR(1000) | - | Detalhes sobre os produtos desta categoria. | Opcional (NULL). |
| **categorias_id_categoria** | INT | FK | ID da categoria superior (pai). | Referencia a própria tabela. |

---


