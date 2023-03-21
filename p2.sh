#!/bin/bash

read -p "Введите размер часов: " N

odd=$(("$N"%2))

if [[ "$odd" -eq 0 || "$N" -le 1 ]]; then 
  echo "Неверное значение. Оно должно быть нечетным и больше 1" 
  exit 
fi

for (( i=0; i<=N-2; i++ )); do
  for (( j=0; j<=N-2; j++ )); do
    if [[ $((N-i)) -ge $((N-j)) ]]; then
      echo -n "* "
    else
      echo -n " "
    fi
  done
  echo "*"
done

for (( i=1; i<=N; i++ )); do
  for (( j=1; j<=N; j++ )); do
    if [[ $((N-i)) -lt $j ]]; then
      echo -n "* "
    elif [[ "$i" == 1 && "$j" == 5 ]]; then
      echo -n " "
    else 
      echo -n " "
    fi
  done
  echo ""
done
