#!/bin/bash
# Тестовый скрипт для обновления ПО
#
echo "Введите число от 1 до 4 (1 - pacman, 2 - yay, 3 - apt, 4 - отмена): "
read UPD
#
if [ "$UPD" -eq 1 ]; then
    sudo pacman -Suy;
elif [ "$UPD" -eq 2 ]; then
    yay -Suy;
elif [ "$UPD" -eq 3 ]; then
    sudo apt update && sudo apt upgrade;
elif [ "$UPD" -eq 4 ]; then
    echo "Операция отменена. Завершение процесса...";
else
    echo "Ошибка - введено неверное значение";
fi
