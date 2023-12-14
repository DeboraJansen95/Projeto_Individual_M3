## Entidades:

### 1. ParceiroA
- Entidade que representa as empresas parceiras.
  
### 2. AreaB
- Entidade que descreve as áreas de atuação das tecnologias (e.g., webdev, dados, marketing).

### 3. TecnologiaC
- Entidade que armazena informações sobre as tecnologias utilizadas, vinculadas a uma área específica.

### 4. Parceiro_TecnologiaA
- Entidade de relacionamento entre empresas parceiras e tecnologias que elas utilizam.

### 5. FuncaoB
- Entidade que define as funções dos colaboradores.

### 6. ColaboradorC
- Entidade que contém dados sobre os colaboradores das empresas parceiras.

### 7. ProjetoA
- Entidade que representa os projetos das empresas parceiras.

### 8. Projeto_TecnologiaB
- Entidade de relacionamento entre projetos e tecnologias utilizadas nesses projetos.

### 9. Parceiro_ColaboradorC
- Entidade de relacionamento entre empresas parceiras e seus colaboradores.

## Principais Campos e Tipos:

- **ParceiroA:**
  - `id_parceiro` (INT, Chave Primária)
  - `Nome` (VARCHAR(255))
  - `Endereco` (VARCHAR(255))

- **AreaB:**
  - `id_area` (INT, Chave Primária)
  - `Nome` (VARCHAR(255))

- **TecnologiaC:**
  - `id_tecnologia` (INT, Chave Primária)
  - `Nome` (VARCHAR(255))
  - `id_area` (INT, Chave Estrangeira referenciando `id_area` na tabela `AreaB`)

- **Parceiro_TecnologiaA:**
  - `id_parceiro` (INT, Chave Estrangeira referenciando `id_parceiro` na tabela `ParceiroA`)
  - `id_tecnologia` (INT, Chave Estrangeira referenciando `id_tecnologia` na tabela `TecnologiaC`)

- **FuncaoB:**
  - `id_funcao` (INT, Chave Primária)
  - `Nome` (VARCHAR(255))

- **ColaboradorC:**
  - `id_colaborador` (INT, Chave Primária)
  - `Nome` (VARCHAR(255))
  - `id_parceiro` (INT, Chave Estrangeira referenciando `id_parceiro` na tabela `ParceiroA`)
  - `id_funcao` (INT, Chave Estrangeira referenciando `id_funcao` na tabela `FuncaoB`)
  - `CPF` (VARCHAR(14), Único)

- **ProjetoA:**
  - `id_projeto` (INT, Chave Primária)
  - `Nome` (VARCHAR(255))
  - `Descricao` (TEXT)
  - `id_parceiro` (INT, Chave Estrangeira referenciando `id_parceiro` na tabela `ParceiroA`)

- **Projeto_TecnologiaB:**
  - `id_projeto` (INT, Chave Estrangeira referenciando `id_projeto` na tabela `ProjetoA`)
  - `id_tecnologia` (INT, Chave Estrangeira referenciando `id_tecnologia` na tabela `TecnologiaC`)

- **Parceiro_ColaboradorC:**
  - `id_parceiro` (INT, Chave Estrangeira referenciando `id_parceiro` na tabela `ParceiroA`)
  - `id_colaborador` (INT, Chave Estrangeira referenciando `id_colaborador` na tabela `ColaboradorC`)

## Relacionamentos:

- Um parceiro pode utilizar várias tecnologias (Parceiro_TecnologiaA).
- Um projeto pode envolver várias tecnologias (Projeto_TecnologiaB).
- Um parceiro pode ter vários colaboradores (Parceiro_ColaboradorC).
- Cada colaborador tem uma função associada (ColaboradorC -> FuncaoB).

## Exemplo de insert para cada entidade

### ParceiroA
```mysql
INSERT INTO ParceiroA (id_parceiro, Nome, Endereco) VALUES

(1, 'Parceiro1', 'Endereco1'),

(2, 'Parceiro2', 'Endereco2');
```

### AreaB
```mysql
INSERT INTO AreaB (id_area, Nome) VALUES

(1, 'Area1'),

(2, 'Area2');
```

### TecnologiaC
```mysql
INSERT INTO TecnologiaC (id_tecnologia, Nome, id_area) VALUES

(1, 'Tecnologia1', 1),

(2, 'Tecnologia2', 2);
```

### Parceiro_TecnologiaA
```myslq
INSERT INTO Parceiro_TecnologiaA (id_parceiro, id_tecnologia) VALUES

(1, 1),

(2, 2);
```

### FuncaoB
```mysql
INSERT INTO Parceiro_TecnologiaA (id_parceiro, id_tecnologia) VALUES

(1, 1),

(2, 2);
```

### ColaboradorC
```mysql
INSERT INTO ColaboradorC (id_colaborador, Nome, id_parceiro, id_funcao, CPF) VALUES

(1, 'Colaborador1', 1, 1, '123.456.789-01'),

(2, 'Colaborador2', 2, 2, '987.654.321-01');
```

### ProjetoA
```mysql
INSERT INTO ProjetoA (id_projeto, Nome, Descricao, id_parceiro) VALUES

(1, 'Projeto1', 'Descrição do Projeto1', 1),

(2, 'Projeto2', 'Descrição do Projeto2', 2);
```

### Projeto TecnologiaB
```mysql
INSERT INTO Projeto_TecnologiaB (id_projeto, id_tecnologia) VALUES

(1, 1),

(2, 2);
```

### Parceiro ColaboradorC
```mysql
INSERT INTO Parceiro_ColaboradorC (id_parceiro, id_colaborador) VALUES

(1, 1),

(2, 2);
```
