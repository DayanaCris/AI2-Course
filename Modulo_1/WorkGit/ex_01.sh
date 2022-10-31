#!/bin/bash

echo "1. Descobrir a quantidade de atrasos de uma dada companhia passada como parâmetro."

echo -e "1- Descobrir a quantiade de atrasos de uma dada companhia passada como parâmetro, em minutos.\n"
echo "  AA      AQ      AS      B6      CO      DL      EV      F9     FL      HA"
echo "  MQ      NW      OH      OO      TZ      UA      US      WN     XE      YV"
read -p "Em qual companhia deseja realizar a consulta? " companyname
#cat 2006-sample.csv | cut -d, -f9,15,16 | cut -d, -f2,3 | grep '.,.' | wc -l
echo "A Companhia $companyname tem um total de $(grep $companyname "$1" | cut -d, -f9,15 | cut -d, -f2 | tail -n +2| grep -v '-'| grep -v '^$'| grep -v '0.0'| wc -l) minutos de atraso."
echo -e "****************************\n"
