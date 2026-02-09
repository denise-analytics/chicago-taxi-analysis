# 🚕 Análise de Corridas de Táxi em Chicago

## 📌 Visão Geral
Este projeto apresenta uma análise de dados de corridas de táxi na cidade de Chicago, com foco na identificação de padrões de demanda, concentração de mercado e no impacto das condições climáticas na duração das viagens.

A análise combina **consultas SQL** para extração e agregação de dados com **Python** para análise exploratória, visualização e testes estatísticos, gerando insights orientados à tomada de decisão.

---

## 🎯 Perguntas de Negócio
A análise foi conduzida para responder às seguintes questões:

- Quais empresas de táxi concentram o maior volume de corridas?
- Quais bairros apresentam maior média de corridas como destino?
- As condições climáticas impactam a duração das corridas do bairro Loop até o Aeroporto Internacional O'Hare?

---

## 🗂️ Dados Utilizados
Foram utilizados dados históricos de corridas de táxi e registros meteorológicos da cidade de Chicago, contemplando:

- Empresas de táxi e volume de corridas  
- Bairros de destino e média de corridas  
- Duração das viagens  
- Condições climáticas no momento das corridas  

**Período analisado:** novembro de 2017.

### 🌦️ Fonte dos dados meteorológicos
Os dados meteorológicos foram obtidos a partir da seguinte fonte pública:

https://practicum-content.s3.us-west-1.amazonaws.com/data-analyst-eng/moved_chicago_weather_2017.html

Os dados de corridas foram extraídos por meio de consultas SQL executadas em um banco de dados relacional disponibilizado no ambiente do projeto.

---

## 🛠️ Ferramentas e Tecnologias
SQL – extração, filtragem, agregação e junção de dados  
Python (Pandas, Matplotlib, SciPy)  
Jupyter Notebook

---

## 🔍 Metodologia

### Análise Exploratória de Dados (EDA)
- Verificação da estrutura e dos tipos de dados  
- Análise do volume de corridas por empresa de táxi  
- Identificação dos bairros com maior média de corridas como destino  
- Visualização dos principais padrões observados  

### Teste de Hipóteses
- Formulação das hipóteses nula e alternativa  
- Definição do nível de significância (α = 0,05)  
- Aplicação do teste *t* de Student para amostras independentes  
- Avaliação estatística do impacto das condições climáticas na duração das corridas  

---

## 📊 Principais Resultados
- O mercado apresenta alta concentração, com poucas empresas dominando o volume total de corridas.
- Os bairros Loop, River North e Streeterville concentram as maiores médias de corridas como destino.
- O Aeroporto Internacional O'Hare se destaca como um dos principais destinos, indicando alta relevância logística.
- O teste estatístico indicou diferença significativa na duração média das corridas em dias com condições climáticas adversas, com viagens mais longas em comparação a dias de clima favorável.

---

## 📄 Relatório
O relatório final com a análise detalhada, visualizações e conclusões está disponível no link abaixo:

👉 [Acessar relatório em PDF](reports/Analise_Dados_Corridas_Taxi_Chicago.pdf)

---

## 📂 Estrutura do Repositório

📁 chicago-taxi-analysis
├── notebooks/
├── reports/
└── README.md

---

## 👩‍💻 Autora
**Denise Duarte**  
Analista de Dados | SQL | Python | Análise Exploratória | Estatística  

GitHub: https://github.com/denise-analytics  
LinkedIn: https://www.linkedin.com/in/denise-duarte-a93b76230/
