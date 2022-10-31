#!/bin/bash

echo"7.  Mostrar o tempo total de atrasos para a decolagem de vôos no aeroporto JFK, de Nova Iorque."

cat "$1"2006-sample.csv | cut -d ',' -f16,17 | grep -w JFK | cut -d ',' -f1 | grep -v '-'| grep -v '^$' | paste -sd+ | bc
