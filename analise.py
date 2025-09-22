import pandas as pd

# Carregar os dados do arquivo CSV enviado pelo usuário
cafe_df = pd.read_csv('cafe_dados.csv')

# Mostrar as primeiras linhas para ver a estrutura
print(cafe_df.head())

# Vamos verificar informações gerais do dataframe
cafe_df.info()

# E também um resumo estatístico rápido por marca
cafe_df.groupby('modelo')['cafeina_mg'].describe()
