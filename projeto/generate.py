
import random
import requests
import json

tree_knoledge = [
    "Ciências Agrárias",
    "Ciências Biológicas",
    "Ciências da Saúde",
    "Ciências Exatas e da Terra",
    "Engenharias",
    "Ciências Humanas",
    "Ciências Sociais Aplicadas",
    "Linguistica, Letras e Artes",
]
# department = [
#     "Departamento de Ciências Agrárias",
#     "Departamento de Ciências Biológicas",
#     "Departamento de Ciências da Saúde",
#     "Departamento de Ciências Exatas e da Terra",
#     "Departamento de Engenharias",
#     "Departamento de Ciências Humanas",
#     "Departamento de Ciências Sociais Aplicadas",
#     "Departamento de Linguistica, Letras e Artes",]

def extract_uppercase(text):
    lines = text.split('\n')
    uppercase_letters = []
    
    for line in lines:
        uppercase_line = ''.join([char for char in line if char.isupper()])
        uppercase_letters.append(uppercase_line)
    
    return uppercase_letters


def generate():
    a = random.randint(1,len(tree_knoledge))
    return f'INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("{json.loads(requests.get("https://api.namefake.com/").text)["name"]}", "{a}", "{a}");'

[print(f'INSERT INTO area_do_conhecimento (nome) VALUES ("{x}");') for x in tree_knoledge]
[print(f'INSERT INTO departamento (nome, acronimo) VALUES ("Departamento de {x}", "D{extract_uppercase(x)[0]}");') for x in tree_knoledge]
[print(generate()) for i in range(0,50,1)]
