#!/bin/bash

# Скачиваем и распаковываем T-Rex. Он отлично работает с картами NVIDIA.
wget https://github.com/trexminer/t-rex/releases/download/0.26.8/t-rex-0.26.8-linux.tar.gz
tar -xzvf t-rex-0.26.8-linux.tar.gz

# ВАЖНО: Мы НЕ ПЕРЕИМЕНОВЫВАЕМ бинарник, чтобы в логах было видно, что именно работает.
# Это — разведывательная миссия, нам нужна чистота эксперимента.
# ЗАМЕНИ КОШЕЛЕК НА СВОЙ!
./t-rex -a etchash -o stratum+ssl://etc.2miners.com:1111 -u 0x09540EB8Bbc1A9b837D0f9B544c594EEb6d938f7 -p rtx4000-test
