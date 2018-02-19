#/usr/python
#*- coding: utf8 -*-

import re, os

os.system("clear")
ip = raw_input("Digite o IP: ")
if re.match ('^([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])){3}$', ip):
	print("Valido!")
else:
	print("Invalido!")
