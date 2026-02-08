# 🚕 Análise de Corridas de Táxi em Chicago

## 📌 Visão Geral

Este projeto analisa dados de corridas de táxi na cidade de Chicago com o objetivo de identificar padrões de demanda, concentração de mercado e o impacto das condições climáticas na duração das viagens.

A análise foi conduzida utilizando SQL para extração e preparação dos dados e Python para análise exploratória, visualização e testes estatísticos.

---

## 🎯 Perguntas de Negócio

A análise buscou responder às seguintes perguntas:

- Quais empresas de táxi concentram o maior volume de corridas?
- Quais bairros apresentam maior média de corridas como destino?
- As condições climáticas impactam a duração das corridas do bairro Loop até o Aeroporto Internacional O'Hare?

---

## 🗂️ Dados Utilizados

Foram utilizados dados históricos de corridas de táxi e registros meteorológicos da cidade de Chicago, incluindo:

- Empresas de táxi e quantidade de corridas
- Bairros de destino e média de corridas
- Duração das viagens
- Condições climáticas no momento das corridas

Período analisado: **novembro de 2017**.

---

## 🛠️ Ferramentas e Tecnologias

- **SQL** – consultas para extração, filtragem, agregação e junção de dados
- **Python**
  - Pandas
  - Matplotlib
  - SciPy
- **Jupyter Notebook**

---

## 🔍 Metodologia

### Análise Exploratória de Dados (EDA)
- Verificação da estrutura e tipos de dados
- Análise do volume de corridas por empresa de táxi
- Identificação dos bairros com maior média de corridas como destino
- Visualização dos principais padrões encontrados

### Teste de Hipóteses
- Formulação de hipóteses nula e alternativa
- Definição do nível de significância (α = 0,05)
- Aplicação do teste t de Student para amostras independentes
- Avaliação estatística do impacto das condições climáticas na duração das corridas

---

## 📊 Principais Resultados

- O mercado apresenta **alta concentração**, com poucas empresas dominando o volume de corridas.
- Os bairros **Loop**, **River North** e **Streeterville** concentram as maiores médias de corridas como destino.
- O Aeroporto Internacional **O'Hare** figura entre os principais destinos, indicando forte relevância logística.
- O teste estatístico indicou **diferença significativa** na duração média das corridas em dias com clima ruim, com viagens mais longas em comparação a dias com clima bom.

---

## 📂 Estrutura do Repositório

📁 chicago-taxi-analysis
│
├── data/
├── notebooks/
├── reports/
├── README.md

---

## 👩‍💻 Autora

Denise Duarte  
Analista de Dados | SQL | Python | Análise Exploratória | Estatística

GitHub: https://github.com/denise-analytics  
LinkedIn: https://www.linkedin.com/in/denise-duarte-a93b76230/
