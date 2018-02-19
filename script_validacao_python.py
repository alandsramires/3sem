#!/usr/python
#-*- coding: utf8 -*-

######### IMPORTANTE ##########
#NÃO ESQUECER DO CABEÇALHO
#CASO NÃO COLOCAR O CODING 
#DARÁ ERRO DE ASCII 

import re, os  #RE BIBLIOTECA DE REGULAR EXPRESSION  // INCLUIR A BIBLIOTECA OS PARA UTILIZAR OS COMANDOS DE SISTEMA OPERACIONAL EX: CLEAR ou SPEEP

os.system("clear") 
var = raw_input("Nome: ")
if re.match("^[a-zA-Z ]+$", var): # RE.MATCH - UTILIZADO PARA COMPARAR VALOR DE VARIAVEL COM 'GREP' // TERMINAR COM "$" PARA NÃO COLOCAR MAIS COISA DPS DA VALIDACAO
	print("Valido!")
else:
	print("Invalido!")

cpf = raw_input("CPF: ")
if re.search("^[0-9]{3}(\.?[0-9]{3}){2}-?[0-9]{2}$", cpf): #SEARCH FUNCIONA COMO MATCH // UTILIZAR "?" DEPOIS DA PONTUAÇÃO DEIXA ELA OPCIONAL, FUNCIONA COM O SEM O PONTO
	print("Valido!")
else:
	print("Invalido!")

rg = raw_input("RG: ")
if re.match("^[0-9]{1,2}(\.?[0-9]{3}){2}-?[0-9a-z]$", rg):
	print("Valido!")
else:
	print("Invalido!")

tel = raw_input("Telefone: ")
if re.search("^(\([0-9]{2}\))?[ ]?[0-9]{4}-?[0-9]{4}$", tel): #UTILIZAR CONTRA BARRA PARA "PROTEGER" OS REGEX
	print("Valido!")
else:
	print("Invalido!")

mail = raw_input("Email: ")
if re.match("^[a-z]+([._-][0-9a-z]+|[0-9])*@[a-z]+([._-][0-9a-z]+|[0-9])*(\.com|\.br|.\com\.br)$", mail): 
#UTILIZAR O "+" PARA CAMPOS OPCIONAIS QUE PODEM APARECER 0 OU 1 VEZ //UTILIZAR O "*" PARA ACEITAR VARIAS VEZES
	print("Valido!")
else:
	print("Invalido!")

data = raw_input("Nascimento: ")
if re.match("^(0[1-9]|[12][0-9]|3[01])/?(0[1-9]|1[0-2])/?(200[0-9]|201[0-8]|19[0-9]{2})$", data):
	print("Valido!")
else:
	print("Invalido!")
