#!/bin/sh
set -a
fecha=`date +%d%b%Y_%H%M%S`
echo "CARGA DIARIA $fecha"
killall java
/home/pdi/data-integration/./kitchen.sh -file="/home/JB_CARGA_DIARIA_GENERAL.kjb" -level="Basic" -logfile="/home/CARGA_DIARIA_$fecha.log" 
echo "FIN CARGA DIARIA . REVISAR LOS LOGS"