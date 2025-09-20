# ВАЖНО: Мы берем за основу не просто Ubuntu, а официальный образ от NVIDIA
# с уже установленными драйверами CUDA. Это — ключ к стабильности.
FROM nvidia/cuda:12.3.1-base-ubuntu22.04

# Устанавливаем базовые утилиты
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

# Копируем наш боевой скрипт внутрь контейнера
COPY run.sh /app/run.sh
# Даем ему права на исполнение
RUN chmod +x /app/run.sh

# Приказ: при запуске выполнить наш скрипт
CMD ["/app/run.sh"]
