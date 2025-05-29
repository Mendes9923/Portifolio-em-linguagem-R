# <img src="https://www.r-project.org/logo/Rlogo.png" width="30" height="30"> Portfólio de Análise de Dados com R

[![R Version](https://img.shields.io/badge/R-4.3.2+-276DC3?logo=r&logoColor=white)](https://www.r-project.org/)
[![RStudio](https://img.shields.io/badge/RStudio-2023.12+-75AADB?logo=rstudio)](https://www.rstudio.com/)
[![Licença](https://img.shields.io/badge/Licença-MIT-green)](LICENSE)

Repositório profissional demonstrando aplicações avançadas da linguagem R em análise de dados, estatística e visualização.
# Conceitos Básicos de R

Este repositório reúne **dez scripts introdutórios** em R, com foco em conceitos fundamentais da linguagem.

## Arquivos

### `operadores_matematicos.R`

Demonstra o uso dos principais operadores matemáticos em R:

- Operações básicas: soma, subtração, multiplicação e divisão  
- Potenciação e radiciação  
- Módulo e fatorial  
- Logaritmos e exponenciais  
- Funções trigonométricas (em radianos)  
- Notação científica  
- Constante `pi` e consulta da versão do R  

### `variaveis.R`

Apresenta a criação e manipulação de objetos (variáveis) em R:

- Atribuição de valores  
- Boas práticas de nomenclatura  
- Tipos básicos de dados: `numeric`, `integer`, `complex`, `character`, `logical` e `factor`  
- Conversão entre tipos  
- Uso da função `length()` para verificar o comprimento de objetos  

### `fatores.R`

Explora o uso de fatores (factors), uma estrutura de dados utilizada para representar variáveis categóricas:

- Criação de fatores a partir de vetores com valores categóricos  
- Comparação entre vetores comuns e fatores  
- Uso das funções `summary()` e `table()` para análise de frequência  
- Aplicação prática: categorias como nível de escolaridade e tensão elétrica residencial (110V, 220V)  

### `matriz.R`

Apresenta a criação e manipulação de **matrizes**, estruturas bidimensionais organizadas em linhas e colunas:

- Criação de matrizes com números e com caracteres  
- Acesso a elementos por índice  
- Combinação de vetores com `rbind()`  
- Nomeação de linhas e colunas com `dimnames`  
- Operações com matrizes: soma, subtração, multiplicação escalar e matricial  
- Cálculo de média e soma por linha e por coluna com `rowMeans()`, `colMeans()`, `rowSums()` e `colSums()`  

### `data_frame_listas.R`

Apresenta dois tipos importantes de estruturas de dados em R: **data frames** e **listas**.

- **Data frames**:
  - Tabelas com colunas de diferentes tipos (números, texto etc.)
  - Criação manual e visualização de data frames
  - Exemplos com conjuntos de dados internos do R: `mtcars`, `airquality` e `iris`
  - Uso de funções como `nrow()`, `ncol()`, `dim()` e `summary()`

- **Listas**:
  - Estrutura que pode conter elementos de tipos diferentes (vetores, strings, números etc.)
  - Criação de listas simples e nomeadas
  - Acesso a elementos por índice ou por nome

### `importacao_data_frames.R`

Demonstra como importar dados para o R a partir de diferentes formatos de arquivo:

- `read.table()` para arquivos `.txt`
- `read.csv()` com diferentes codificações de texto
- `readxl::read_xlsx()` para leitura de arquivos `.xlsx` (Excel)
- Ajuste do diretório de trabalho com `setwd()`

### `pacotes.R`

Explica o funcionamento da instalação, carregamento e remoção de pacotes no R:

- Diferença entre pacotes básicos, recomendados e opcionais
- Instalação com `install.packages()`
- Carregamento com `library()`
- Checagem e instalação condicional com `require()`
- Remoção de pacotes com `remove.packages()`
- Acesso à documentação de pacotes com `?nome_do_pacote`

### `funcoes.R`

Apresenta a definição e uso de **funções personalizadas** em R:

- Criação de funções com `function()`
- Uso de `return()` para retornar valores
- Exemplos práticos como:
  - Comparação de dois números
  - Cálculo da hipotenusa pelo Teorema de Pitágoras
  - Cálculo de catetos ou hipotenusa de forma condicional

### `estrutura_repeticao.R`

Explora as **estruturas de repetição** disponíveis em R:

- `for`: iteração simples sobre sequências e vetores
- `while`: laços condicionais
- `repeat`: laço infinito com condição de parada manual (`break()`)

### `estrutura+condicional.R`

Demonstra o uso de **estruturas condicionais**:

- `if`, `else if` e `else`
- `ifelse()` para avaliação condicional vetorial
- Exemplos com condições numéricas e textos (ex: classificação de nota)
- 

## Projeto 1 - Tratamento de Dados COVID-19 no Estado de São Paulo
### 📄 Descrição:
Este projeto consiste no tratamento de dados referentes à COVID-19 no estado de São Paulo. O objetivo foi preparar o conjunto de dados para análises futuras, realizando limpeza, transformação de variáveis, exclusão de inconsistências e criação de novas métricas.

### 📂 Arquivo de Dados: `dados_covid_sp.csv`

🔧 Processos Realizados:

- Leitura dos dados no formato `.csv`
- Renomeação de variáveis para maior clareza
- Exclusão de colunas e linhas irrelevantes ou inconsistentes
- Tratamento de valores ausentes `(NA e NaN)`
- Conversão de tipos de variáveis `(datas, inteiros, numéricos)`
- Criação de uma variável derivada: percentual de idosos `(idoso(%))`
- Exportação do dataset tratado para `.csv` e `.txt`

### 🧠 Principais funções e pacotes utilizados:
- dplyr para manipulação de dados
- readr para exportação
- Funções como`rename(), filter(), select(), slice(), mutate(), glimpse(), as.Date(), write_delim()` entre outras

  ## Pacotes
```r
if(!require(dplyr)) install.packages("dplyr")
if(!require(readr)) install.packages("readr")

library(dplyr)
library(readr)
```
  ## Importação dos Dados
  ```r
setwd("Caminho/para/seu/diretorio")
dados <- read.csv2("dados_covid_sp.csv", sep = ";", encoding = "UTF-8")
head(dados)
````
  ## Renomeando Colunas
  ```r
dados <- rename(dados,
                municipio = nome_munic,
                data = datahora,
                rotulo_mapa = map_leg,
                codigo_mapa = map_leg_s)
```
  ## Limpando os Dados
  ```r
dados <- dados %>%
  select(-cod_ra, -codigo_ibge, -cod_drs) %>%
  select(-c(14, 15)) %>%
  select(-c(17:19)) %>%
  slice(-c(239660, 239661:239666)) %>%
  filter(municipio != "Ignorado")
```
  ## Tratando Valores Ausentes
  ```r
sapply(dados, function(x) sum(is.na(x)))
sapply(dados, function(x) sum(is.nan(x)))

dados[is.na(dados)] <- 54

# Corrigindo coluna 'semana_epidem'
dados$semana_epidem[dados$semana_epidem == 54] <- 2021
```
  ## Conversão de Tipos
  ```r
dados$data <- as.Date(dados$data, format = "%d/%m/%Y")
dados$semana_epidem <- as.integer(dados$semana_epidem)

dados[5:8] <- lapply(dados[5:8], as.character)
dados[5:6] <- lapply(dados[5:6], as.integer)
dados[7:8] <- lapply(dados[7:8], as.numeric)

glimpse(dados)
```
  ## Criação de Novas Variáveis
  ```r
dados <- dados %>%
  mutate(`idoso(%)` = 100 * pop_60 / pop)

head(dados)
```
  ## Exportando os Dados Tratados
```r  
write_delim(dados, "covid_sp_tratado.csv", delim = ",")
write.table(dados, "covid_sp_tratado.txt", sep = ",", row.names = FALSE)
```
## 🧩 Técnicas Demonstradas

### 🔧 Manipulação de Dados
```r
# Limpeza e transformação com tidyverse
library(tidyverse)

dados <- read_csv("dados.csv") %>%
  filter(!is.na(valor)) %>%
  mutate(
    valor_ajustado = log(valor),
    categoria = factor(categoria, levels = c("Baixo", "Médio", "Alto"))
  ) %>%
  group_by(regiao) %>%
  summarise(media = mean(valor_ajustado, na.rm = TRUE))
```
### 📊 Visualização Avançada
```r
# Gráficos interativos com ggplot2 + plotly
library(ggplot2)
library(plotly)

grafico <- ggplot(dados, aes(x = idade, y = renda, color = educacao)) +
  geom_point(alpha = 0.7) +
  geom_smooth(method = "lm") +
  labs(title = "Renda por Idade e Educação",
       x = "Idade (anos)",
       y = "Renda (R$)") +
  theme_minimal()

ggplotly(grafico)
```
### 📈 Modelagem Estatística
```r
# Análise de regressão linear múltipla
modelo <- lm(renda ~ idade + educacao + experiencia, data = dados)

# Diagnóstico do modelo
library(broom)
tidy(modelo) %>%
  kable(digits = 3, caption = "Resultados da Regressão")

glance(modelo) %>%
  kable(caption = "Métricas do Modelo")
```
```
portfolio-R/
├── Introdução/
├── Linguagem R/
├──Tratamento, exploração e análise de dados Projeto 1/
```

### 🛠️ Stack Completa
| Categoria      | Pacotes/Ferramentas                     |
|----------------|------------------------------------------|
| Manipulação    | dplyr, tidyr, readr, purrr              |
| Visualização   | ggplot2, plotly, ggthemes               |
| Modelagem      | caret, lm, glmnet, randomForest         |
| Relatórios     | RMarkdown, bookdown, knitr              |
| Interatividade | shiny, flexdashboard                    |

## 📬 Contato e Redes

-[LinkedIn](https://www.linkedin.com/in/daniel-mendes-a64326140)
