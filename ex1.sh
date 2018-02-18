!#/bin/bash

#CPF
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

echo "Digite seu nome:"
read NOME

	if [[ $NOME =~ $GNOME ]];then
	 echo "Nome Correto"
		else
	 	 echo "Nome Incorreto"
	fi

sleep 2
echo "Digite seu e-mail:"
read EMAIL

	if [[ $EMAIL =~ $GEMAIL ]] ;then
	 echo "E-mail Válido!"
		else
		 echo "E-mail Inválido!"
	fi

sleep 2
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
				 echo "Numer de Telefone Inválido!"
			 fi	
		 fi
	fi
