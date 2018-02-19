#!/bin/bash

read -p "Digite a data de nascimento: (PADRÃO DD/MM/AAAA)" data
echo $data | grep -E --color '^(0[1-9]|[12][0-9]|3[0-1])/?(0[1-9]|1[0-2])/?(200[0-9]|201[0-8]|19[0-9]{2})$'
