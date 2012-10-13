#!/bin/bash

echo
echo "Agregando archivos al almacen..."

for i in $@; do 
    git add $i
done

echo
echo "Describe tus cambios:"

read mensaje

git commit -m $mensaje

echo "Empacando archivos..."
echo

echo "Enviando archivos al repositorio..."

git push https://github.com/andresrcc/tds/
