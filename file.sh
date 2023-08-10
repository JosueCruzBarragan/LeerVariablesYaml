#!/bin/bash

# Definición de variables por defecto
parametro_a="valor_a"
comment=""

# Ciclo para procesar los argumentos de línea de comandos
while getopts "c:" opt; do
  case $opt in
    c)
      comment="$OPTARG"
      ;;
    \?)
      echo "Opción inválida: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

# Imprimir los valores de los parámetros
[ "$comment" != "comment" ] && echo "SIN COMENTAR 1."
echo "No debe estar comentada"
[ "$comment" != "comment" ] && echo "SIN COMENTAR 2."
echo "No debe estar comentada"
[ "$comment" != "comment" ] && echo "SIN COMENTAR 3."
