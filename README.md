# <img src="https://www.r-project.org/logo/Rlogo.png" width="30" height="30"> Portfólio de Análise de Dados com R

[![R Version](https://img.shields.io/badge/R-4.3.2+-276DC3?logo=r&logoColor=white)](https://www.r-project.org/)
[![RStudio](https://img.shields.io/badge/RStudio-2023.12+-75AADB?logo=rstudio)](https://www.rstudio.com/)
[![Licença](https://img.shields.io/badge/Licença-MIT-green)](LICENSE)

Repositório profissional demonstrando aplicações avançadas da linguagem R em análise de dados, estatística e visualização.

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
