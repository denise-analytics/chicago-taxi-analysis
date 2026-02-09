# 🚕 Análise de Corridas de Táxi em Chicago

## 📌 Visão Geral
Este projeto apresenta uma análise de dados de corridas de táxi na cidade de Chicago, com foco na identificação de padrões de demanda, concentração de mercado e no impacto das condições climáticas na duração das viagens.

A análise combina **SQL** para extração e agregação de dados e **Python** para análise exploratória, visualização e testes estatísticos, gerando insights orientados à tomada de decisão.

---

## 🎯 Perguntas de Negócio
- Quais empresas de táxi concentram o maior volume de corridas?
- Quais bairros apresentam maior média de corridas como destino?
- As condições climáticas impactam a duração das corridas do bairro Loop até o Aeroporto Internacional O'Hare?

---

## 🗂️ Dados Utilizados
- Dados históricos de corridas de táxi (novembro/2017)
- Registros meteorológicos da cidade de Chicago

### 🌦️ Fonte dos dados meteorológicos
🔗 https://practicum-content.s3.us-west-1.amazonaws.com/data-analyst-eng/moved_chicago_weather_2017.html

Os dados de corridas foram extraídos por meio de consultas SQL executadas em um banco de dados relacional disponibilizado no ambiente do projeto.

---

## 🛠️ Ferramentas e Tecnologias
- SQL  
- Python (Pandas, Matplotlib, SciPy)  
- Jupyter Notebook  

---

## 🔍 Metodologia
**Análise Exploratória de Dados (EDA)**
- Verificação da estrutura e tipos de dados  
- Análise do volume de corridas por empresa  
- Identificação dos bairros com maior média de corridas como destino  
- Visualização dos principais padrões  

**Teste de Hipóteses**
- Formulação das hipóteses nula e alternativa  
- Definição do nível de significância (α = 0,05)  
- Teste t de Student para amostras independentes  

---

## 📊 Principais Resultados
- Alta concentração de mercado, com poucas empresas dominando o volume total de corridas  
- Loop, River North e Streeterville lideram como destinos  
- O Aeroporto Internacional O'Hare se destaca como destino estratégico  
- Diferença estatisticamente significativa na duração das corridas em dias com clima adverso  

---

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
Analista de Dados | SQL | Python | EDA | Estatística  

🔗 GitHub: https://github.com/denise-analytics  
🔗 LinkedIn: https://www.linkedin.com/in/denise-duarte-a93b76230/
