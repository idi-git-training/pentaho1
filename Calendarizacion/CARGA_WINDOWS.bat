@echo off
REM Fecha inicio
set datetimef=%date:~-4%%date:~3,2%%date:~0,2%%time:~0,2%%time:~3,2%%time:~6,2%
echo ETL
echo %datetimef% Inicia carga diaria
REM Raiz del proyecto
cd D:\Pentaho_Data_Integration\data-integration
REM Ejecutamos ETL
kitchen.bat /file:"D:\CARGA_DIARIA.kjb" /level:"Basic" /logfile:"D:/CARGA_DIARIA_%datetimef%.log"
echo %datetimef% Proceso completado, revisar logs