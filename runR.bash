#!/bin/bash
# extraer R
d=$(date +'%G/%m/%d %H:%M:%S')
h=$(hostname -f)
echo "${d} inicia extraccion portableR.tgz en ${h}"
tar xfz portableR.tgz
d=$(date +'%G/%m/%d %H:%M:%S')
echo "${d} finaliza extraccion portableR.tgz"

# Ejecutar R con el archivo indicado
d=$(date +'%G/%m/%d %H:%M:%S')
echo "${d} inicia ejecución r con entradas $1"
export LD_LIBRARY_PATH=`pwd`/portableR/lib
export R_HOME=`pwd`/portableR
export R_LIBS=`pwd`/portableR/site-library
./portableR/R -q -f $1
d=$(date +'%G/%m/%d %H:%M:%S')
echo "${d} finaliza ejecución r con entradas $1"
