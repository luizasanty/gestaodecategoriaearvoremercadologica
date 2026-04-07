#  Dicionário de Dados

Este documento descreve a estrutura da tabela `categorias` e seus relacionamentos.

---

## Tabela: `categorias`
**Descrição:** Armazena as categorias do sistema, permitindo uma estrutura de árvore (categorias e subcategorias).

| Atributo | Tipo | Chave | Descrição | Observações |
| :--- | :--- | :---: | :--- | :--- |
| **id_categoria** | INT | PK | Identificador único da categoria. | Auto-incremento (AI). |
| **nome_categoria** | VARCHAR(100) | - | Nome oficial da categoria. | Obrigatório (NOT NULL). |
| **descricao_categoria** | VARCHAR(1000) | - | Detalhes sobre os produtos desta categoria. | Opcional (NULL). |
| **categorias_id_categoria** | INT | FK | ID da categoria superior (pai). | Referencia a própria tabela. |

---

###  Regras de Negócio e Relacionamentos

1. **Autorrelacionamento (1:N):** - Uma categoria pode ter **várias** subcategorias relacionadas a ela.
   - Uma subcategoria pertence a **apenas uma** categoria pai.
   
2. **Categorias Principais:**
   - Se o campo `categorias_id_categoria` estiver vazio (`NULL`), significa que ela é uma categoria de primeiro nível (Ex: "Eletrônicos").

3. **Integridade Referencial:**
   - **ON DELETE SET NULL:** Se uma categoria pai for deletada, suas subcategorias continuam existindo, mas passam a ser categorias principais.
   - **ON UPDATE CASCADE:** Se o ID de uma categoria mudar, todas as referências nas subcategorias serão atualizadas automaticamente.

