#!/usr/bin/env bash
#####################################################################
# Script para alternar o LED do teclado genérico
# Autor: Jonas Santana
# Descrição: Este script permite ativar e desativar os LEDs de teclados
# genéricos de maneira simples, alternando entre os estados a cada execução.
# Ideal para pessoas que usam Xorg e teclados sem suporte nativo a LEDs.
#####################################################################

# Caminho do arquivo de log na home do usuário
LOG_DIR="$HOME/.log"
LOG_FILE="$LOG_DIR/keyboard_led_toggle.log"

# Garante que o diretório de log exista
mkdir -p "$LOG_DIR"

# Requisito: Verifica se o sistema está usando Xorg
if ! pgrep -x "Xorg" &> /dev/null; then
    echo "Este script requer Xorg para funcionar. Certifique-se de que está usando Xorg."
    exit 1
fi

# Verifica se o arquivo de log existe, se não, cria e inicializa com 0
if [ ! -f "$LOG_FILE" ]; then
    echo 0 > "$LOG_FILE"
fi

# Lê o número de execuções do arquivo de log
count=$(cat "$LOG_FILE")

# Incrementa o contador
count=$((count + 1))

# Salva o novo valor no arquivo de log
echo "$count" > "$LOG_FILE"

# Alterna entre os comandos com base no número de execuções
if (( count % 2 == 1 )); then
    xset led 3
    echo "LED do teclado ativado."
else
    xset -led
    echo "LED do teclado desativado."
fi
