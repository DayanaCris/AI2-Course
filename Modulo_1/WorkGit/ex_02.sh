#!/bin/bash

echo"2.  Descobrir o vôo com maior atraso na chegada (ArrDelay) registrado."

sort -n -t, -k15 2006-sample.csv | tail -1 | cut -d, -f15 
