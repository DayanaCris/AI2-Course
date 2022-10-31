#!/bin/bash

echo"4.  Descobrir o vôo mais longo."

sort -n -t, -k14 2006-sample.csv | tail -1 | cut -d, -f14
