# Análise de Corridas de Táxi em Chicago

## Visão geral

Este projeto apresenta uma análise de corridas de táxi em Chicago para identificar padrões de demanda, empresas com maior volume de viagens, bairros mais procurados e o impacto das condições climáticas na duração dos trajetos.

O estudo combina dados obtidos por consultas SQL com análise exploratória, visualizações e teste estatístico em Python.

## Objetivos

- Identificar as empresas com maior volume de corridas.
- Analisar a distribuição das viagens entre as empresas.
- Identificar os bairros mais procurados como destino.
- Avaliar a importância do Aeroporto Internacional O'Hare.
- Comparar a duração das viagens em diferentes condições climáticas.
- Verificar estatisticamente se o clima afeta a duração das corridas.
- Elaborar recomendações para planejamento operacional.

## Dados analisados

A análise utiliza três conjuntos de dados resultantes de consultas SQL.

### Corridas por empresa

O arquivo `project_sql_result_01.csv` contém **64 empresas de táxi**:

| Variável | Descrição |
|---|---|
| `company_name` | Nome da empresa de táxi |
| `trips_amount` | Quantidade de corridas realizadas |

Os dados representam as corridas realizadas entre 15 e 16 de novembro de 2017.

### Corridas por bairro

O arquivo `project_sql_result_04.csv` contém informações sobre **94 bairros de Chicago**:

| Variável | Descrição |
|---|---|
| `dropoff_location_name` | Bairro de destino |
| `average_trips` | Média de corridas finalizadas no bairro |

### Corridas e condições climáticas

O arquivo `project_sql_result_07.csv` contém **1.068 viagens** realizadas aos sábados entre o bairro Loop e o Aeroporto Internacional O'Hare:

| Variável | Descrição |
|---|---|
| `start_ts` | Data e hora do início da corrida |
| `weather_conditions` | Condição climática classificada como `Good` ou `Bad` |
| `duration_seconds` | Duração da corrida em segundos |

## Metodologia

O projeto foi desenvolvido nas seguintes etapas:

1. extração e agregação dos dados por meio de consultas SQL;
2. coleta dos registros meteorológicos de uma tabela HTML;
3. importação dos resultados para o Python;
4. inspeção da estrutura e dos tipos de dados;
5. verificação de valores ausentes;
6. identificação das empresas com maior volume de corridas;
7. seleção dos dez bairros mais procurados;
8. criação de visualizações;
9. separação das viagens por condição climática;
10. comparação da duração média das corridas;
11. realização de teste estatístico;
12. elaboração de conclusões e recomendações.

## Principais resultados

| Indicador | Resultado |
|---|---:|
| Empresas analisadas | 64 |
| Bairros analisados | 94 |
| Empresa com mais corridas | Flash Cab |
| Corridas da Flash Cab | 19.558 |
| Bairro com maior média de corridas | Loop |
| Média de corridas no Loop | 10.727,47 |
| Viagens entre Loop e O'Hare | 1.068 |
| Viagens com clima bom | 888 |
| Viagens com clima ruim | 180 |
| Duração média com clima bom | 1.999,68 segundos |
| Duração média com clima ruim | 2.427,21 segundos |
| Resultado do teste | Diferença significativa |

## Empresas de táxi

A **Flash Cab** apresentou o maior volume, com **19.558 corridas** no período analisado.

Na sequência, destacaram-se:

1. **Taxi Affiliation Services** — 11.422 corridas;
2. **Medallion Leasing** — 10.367 corridas;
3. **Yellow Cab** — 9.888 corridas;
4. **Taxi Affiliation Service Yellow** — 9.299 corridas.

A diferença entre a Flash Cab e as empresas seguintes indica uma distribuição desigual do volume de corridas.

Entretanto, os dados representam apenas dois dias de operação. Por isso, o resultado não deve ser interpretado isoladamente como participação permanente de mercado.

## Bairros mais procurados

Os bairros com maior média de corridas como destino foram:

| Bairro | Média de corridas |
|---|---:|
| Loop | 10.727,47 |
| River North | 9.523,67 |
| Streeterville | 6.664,67 |
| West Loop | 5.163,67 |
| O'Hare | 2.546,90 |

O Loop apresentou a maior média de corridas, seguido por River North e Streeterville.

Esses bairros possuem forte atividade comercial, turística e hoteleira. A presença de O'Hare entre os principais destinos também demonstra a relevância do aeroporto para a demanda por transporte.

## Impacto das condições climáticas

Foram analisadas **1.068 viagens** realizadas aos sábados entre o Loop e o Aeroporto Internacional O'Hare:

| Condição | Viagens | Duração média |
|---|---:|---:|
| Clima bom | 888 | 1.999,68 segundos |
| Clima ruim | 180 | 2.427,21 segundos |

Em condições climáticas ruins, as viagens duraram, em média, aproximadamente **427,53 segundos a mais**, equivalentes a cerca de **7,1 minutos**.

Esse resultado sugere que chuva e tempestades podem aumentar o tempo necessário para concluir o trajeto.

## Teste estatístico

Foi utilizado um teste t para duas amostras independentes, sem assumir igualdade entre as variâncias, considerando nível de significância de **5%**.

As hipóteses avaliadas foram:

- **H₀:** a duração média das viagens é igual em condições climáticas boas e ruins;
- **H₁:** a duração média das viagens é diferente entre as condições climáticas.

O teste apresentou:

```text
Estatística t = -7,19
Valor-p = 6,74 × 10⁻¹²
```

Como o valor-p foi muito inferior a 0,05, a hipótese nula foi rejeitada.

Há evidência estatística de diferença na duração média das viagens entre condições climáticas boas e ruins. Nos dados analisados, as viagens realizadas em condições ruins apresentaram maior duração média.

## Recomendação de negócio

Recomenda-se considerar as condições meteorológicas no planejamento das viagens entre o Loop e o Aeroporto Internacional O'Hare.

Em períodos de chuva ou tempestade, a operação pode:

- incorporar uma margem adicional nas estimativas de chegada;
- orientar passageiros sobre possíveis atrasos;
- ajustar a disponibilidade de veículos;
- acompanhar áreas com maior demanda;
- monitorar continuamente o desempenho das rotas.

Loop, River North, Streeterville, West Loop e O'Hare devem receber atenção especial por concentrarem maior demanda como destino.

As decisões operacionais também devem considerar trânsito, horário, distância, eventos locais e disponibilidade de veículos.

## Limitações

- Os dados das empresas abrangem apenas dois dias de novembro de 2017.
- As médias por bairro representam somente o mês de novembro de 2017.
- O teste climático considera apenas viagens realizadas aos sábados entre Loop e O'Hare.
- A quantidade de viagens com clima ruim é menor que a de viagens com clima bom.
- A base não contém informações detalhadas sobre trânsito, distância ou eventos locais.
- A diferença estatística não comprova isoladamente uma relação causal.
- Os resultados históricos podem não representar o comportamento atual do mercado.

## Tecnologias utilizadas

- SQL
- Python
- Pandas
- Matplotlib
- SciPy
- Requests
- Beautiful Soup
- Jupyter Notebook

## Estrutura do repositório

```text
chicago-taxi-analysis/
├── data/
│   ├── project_sql_result_01.csv
│   ├── project_sql_result_04.csv
│   └── project_sql_result_07.csv
├── notebooks/
│   └── chicago_taxi_analysis.ipynb
├── scripts/
│   └── weather_scraping.py
├── sql/
│   └── queries.sql
├── .gitignore
├── README.md
└── requirements.txt
```

## Como executar o projeto

1. Clone o repositório:

```bash
git clone https://github.com/denise-analytics/chicago-taxi-analysis.git
```

2. Acesse a pasta:

```bash
cd chicago-taxi-analysis
```

3. Instale as dependências:

```bash
pip install -r requirements.txt
```

4. Para executar a coleta dos dados meteorológicos:

```bash
python scripts/weather_scraping.py
```

5. Entre na pasta do notebook:

```bash
cd notebooks
```

6. Inicie o Jupyter Notebook:

```bash
jupyter notebook
```

Abra `chicago_taxi_analysis.ipynb` e execute as células na ordem apresentada.

## Arquivos principais

- [Análise completa em Jupyter Notebook](notebooks/chicago_taxi_analysis.ipynb)
- [Consultas SQL](sql/queries.sql)
- [Coleta dos dados meteorológicos](scripts/weather_scraping.py)

## Autora

**Denise Duarte**  
Analista de Dados Júnior | Python | SQL | Excel | Power BI
