#!/bin/bash
PF
 #cat repo | grep -E --color '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}'

#EMAIl
 #cat repo | grep -E --color '^[a-zA-Z0-9]'+@'[a-zA-Z]'+'\.com'

#TELEFONE 
 #COM PREFIXO1 + ESPAÇO 
  #cat repo | grep -E --color '^\([0-9]{2}\) [0-9]{5}-[0-9]{4}'
   #COM PREFIXO2 SEM ESPAÇO 
    #cat repo | grep -E --color '^\([0-9]{2}\)[0-9]{5}-[0-9]{4}'
     #SEM PREFIXO
      #cat repo | grep -E --color '^[0-9]{5}-[0-9]{4}'

#IP GENERICO
 # cat repo | grep -E --color '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}\.[0-9]{3}'



clear
echo "Bem-vindo ao cadastro, preencha as informações a seguir:"
sleep 1 

GNOME='^([a-zA-Z])'

GEMAIL='^([a-zA-Z0-9_-.])+(@)+([a-zA-Z])+([.com]|.com.br)'

GTEL1='^\([0-9]{2}\) 9[0-9]{4}-[0-9]{4}'
GTEL2='^\([0-9]{2}\)9[0-9]{4}-[0-9]{4}'
GTEL3='^9[0-9]{4}-[0-9]{4}'

GCPF='^([0-9]{3})(.)([0-9]{3})(.)([0-9]{3})(-)([0-9]{2})'

GRG='^[0-9]{2}\.[0-9]{3}\.[0-9]{3}-[0-9a-z]{1,2}$'

GDATA='^(0[1-9]|[12][0-9]|3[0-1])/?(0[1-9]|1[0-2])/?(200[0-9]|201[0-8]|19[0-9]{2})$'

GIP='^([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])){3}$'

GMASK='^(254|252|248|240|224|192|128)(.0){3}$|^255(.255|.254|.252|.248|.240|.224|.192|.128|.0){3}$'

echo "Digite seu nome:"
read NOME

	if [[ $NOME =~ $GNOME ]];then
	 echo "Nome Correto"
		else
	 	 echo "Nome Incorreto"
	fi

sleep 2

clear
echo "Bem-vindo ao cadastro, preencha as informações a seguir:"
echo "Digite seu e-mail:"
read EMAIL

	if [[ $EMAIL =~ $GEMAIL ]] ;then
	 echo "E-mail Válido!"
		else
		 echo "E-mail Inválido!"
	fi

sleep 2

clear
echo "Bem-vindo ao cadastro, preencha as informações a seguir:"
echo "Digite seu número de telefone celular:"
read TEL

	if [[ $TEL =~ $GTEL1 ]]; then
	 echo "Numero de Telefone Válido!"
	 	else
		 if [[ $TEL =~ $GTEL2 ]];then
		  echo "Numero de Telefone Válido!"
			else
			 if [[ $TEL =~ $GTEL3 ]];then	
			  echo "Numero de Telefone Válido!"
				else
				 echo "Numero de Telefone Inválido!"
			 fi	
		 fi
	fi

sleep 2



clear
echo "Bem-vindo ao cadastro, preencha as informações a seguir:"

echo "Digite seu CPF"
read CPF

	if [[ $CPF =~ $GCPF ]]; then
	 echo "Numero de CPF Válido!"
		else
		echo "Numero de CPF Inválido!"
	fi
sleep 2



clear
echo "Bem-vindo ao cadastro, preencha as informações a seguir:"
echo "Digite seu RG"
read RG

	if [[ $RG =~ $GRG ]]; then
	 echo "Numero de RG Válido!"
		else
		echo "Numero de RG Inválido!"
	fi	

	
sleep 2




clear
echo "Bem-vindo ao cadastro, preencha as informações a seguir:"
echo "Digite seu nascimento: "
read DATA

	if [[ $DATA =~ $GDATA ]]; then
	 echo "Data Válida!"
		else
		echo "Data Inválida!"
	fi	
	
	
sleep 2





clear
echo "Bem-vindo ao cadastro, preencha as informações a seguir:"

echo "Digite um IP: "
read IP

	if [[ $IP =~ $GIP ]]; then
	 echo "IP Válido!"
		else
		echo "IP Inválido!"
	fi	


sleep 2



clear
echo "Bem-vindo ao cadastro, preencha as informações a seguir:"

echo "Digite uma Máscara: "
read MASK

	if [[ $MASK =~ $GMASK ]]; then
	 echo "Mascara Válida!"
		else
		echo "Mascara Inválida!"
	fi		
sleep 2
clear
echo FIM!
sleep 2
