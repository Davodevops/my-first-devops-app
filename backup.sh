#!/bin/bash

echo "=== Запуск умного процесса бэкапа ==="

# 1. Проверяем, существует ли файл server.js
if [ -f server.js ]; then
    # ЕСЛИ ФАЙЛ СУЩЕСТВУЕТ, делаем то, что делали раньше:
    mkdir -p backups
    CURRENT_DATE=$(date +%F)
    cp server.js backups/server_backup_$CURRENT_DATE.js
    echo "Успех! Копия создана."
else
    # ИНАЧЕ (если файла нет), выводим предупреждение:
    echo "КРИТИЧЕСКАЯ ОШИБКА: Файл server.js не найден в этой папке! Копирование отменено."
fi
