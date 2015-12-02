#
# Script molt senzill per comprovar
# si l'usuari que l'executa és root o no
#
# Carlos Alonso
# 02/12/2015

#!/bin/bash
if [[ $EUID -eq 0 ]]; then
  echo "Ets root"
else
  echo "No ets root"
fi
