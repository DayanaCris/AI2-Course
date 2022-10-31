#!/bin/bash

echo"3.  Descobrir o vôo com maior atraso na saída (DepDelay) registrado."

sort -n -t, -k16 2006-sample.csv | tail -1 | cut -d, -f16
