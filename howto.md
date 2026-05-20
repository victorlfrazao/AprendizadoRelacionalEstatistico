# How To — Executar o Projeto

## 1. Abrir o notebook no Google Colab

Abra o arquivo:

`pipeline.ipynb`

ou utilize o Google Colab:

https://colab.research.google.com

Depois selecione:

**Arquivo → Abrir notebook**

e escolha o repositório do projeto.

---

## 2. Executar as dependências

Na primeira célula do notebook, execute a instalação das bibliotecas necessárias:

- SWI-Prolog
- pyswip
- pandas
- scikit-learn

Essa etapa configura o ambiente para integração entre Python e Prolog.

---

## 3. Carregar os arquivos do projeto

O notebook irá carregar automaticamente:

- `rede_social.pl`
- `dados_financeiros.csv`

Esses arquivos representam:

- a base relacional de transações financeiras;
- os dados financeiros tradicionais dos clientes.

---

## 4. Executar as células do notebook

Selecione:

**Ambiente de execução → Executar tudo**

O pipeline realizará automaticamente:

1. conexão com a base Prolog;
2. leitura do dataset financeiro;
3. extração das features relacionais via `pyswip`;
4. cálculo do grau de risco na rede;
5. treinamento do modelo de Regressão Logística;
6. análise dos coeficientes do modelo;
7. geração da probabilidade de risco.

