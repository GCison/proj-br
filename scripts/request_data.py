#!/usr/bin/env python

import json, requests

def get_projecao_api_ibge():
    response = requests.get("https://servicodados.ibge.gov.br/api/v1/projecoes/populacao/BR")
    text = response.text
    data = json.loads(text)
    projecao = data['projecao']
    result = projecao['populacao']
#    writer_data(str(result))

def writer_data(value):
    arq = open("~/cison/html/proj-br/data/data.txt", 'w')
    arq.write(value)
    arq.close()

get_projecao_api_ibge()
