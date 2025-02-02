#!/bin/bash

echo "🚀 Начинаем настройку сервера..."

# Обновляем систему
echo "🔄 Обновление системы..."
sudo apt update && sudo apt upgrade -y

# Добавляем алиасы в ~/.bashrc
echo "🔧 Добавление алиасов..."
echo "alias rs='sudo systemctl restart'" >> ~/.bashrc
echo "alias jr='sudo journalctl -fu'" >> ~/.bashrc
source ~/.bashrc

# Устанавливаем пакеты
echo "📦 Установка btop и python3.10-venv..."
sudo apt install -y btop python3.10-venv

echo "✅ Настройка завершена!"
