# Install Dependences
!pip install selenium

# Scrap Supermercado Guanabara
import requests
from bs4 import BeautifulSoup
import re
from selenium import webdriver
import json
import time
import matplotlib.pyplot as plt
import pandas as pd

# Config
BASE_URL = "https://www.supermercadosguanabara.com.br/"

PARAMS = {
    'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7',
    'DNT': '1',
    'Service-Worker-Navigation-Preload': 'true',
    'Upgrade-Insecure-Requests': '1',
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36',
    'sec-ch-ua': '"Chromium";v="116", "Not)A;Brand";v="24", "Google Chrome";v="116"',
    'sec-ch-ua-mobile': '?0',
    'sec-ch-ua-platform': '"Windows"',
}

# Criando DataFrame para receber os produtos
df_produtos = pd.DataFrame(columns=['Nome', 'Valor', 'URL Image', 'Categoria'])

# Função para obter os itens de uma categoria
def getItems(categoria):
    n_items = 0
    for x in range(1, 5):
        url = BASE_URL + f"{categoria}/page/{x}/"
        if x == 1:
            url = BASE_URL + categoria

        page = requests.get(url=url, headers=PARAMS)
        soup = BeautifulSoup(page.content, "lxml")

        notFound = soup.find_all("p", {"class": "woocommerce-info"})

        if (notFound):
            break

        items = soup.find_all("li", {"class": "product"})

        for a in items:
            try:
                # Obtem os dados do produto
                nameItem = a.find("h2", {"class": "woocommerce-loop-product__title"}).get_text()
                priceValue = a.find("span", {"class": "price"}).get_text()
                imageSRC = a.find("img")["src"]
                urlItem = a.find("a")["href"]

                # Insere item no DataFrame
                df_produtos.loc[len(df_produtos)] = [nameItem, priceValue, imageSRC, categoria]
                n_items += 1

            except Exception as e:
                print("Erro:", e)

    print("Categoria: " + categoria + " - Itens capturados: " + str(n_items))

# Get Categorias do Supermercado Guanabara
df_produtos = pd.DataFrame(columns=['Nome', 'Valor', 'URL Image', 'Categoria'])
categorias = ['mercearia', 'padaria']

# Iteração por Categorias
for categoria in categorias:
    getItems(categoria)

# Print dos Itens Capturados
print(df_produtos)

# Restante do seu código para criar e treinar o modelo, fazer previsões, etc.