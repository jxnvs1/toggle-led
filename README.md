# Toggle LED

Um script Bash simples para ativar ou desativar o LED de teclados genéricos no Linux, ideal para usuários que utilizam o ambiente gráfico XFCE e estão em sistemas com Xorg.

## Recursos

- **Alternância de LED:** Ative ou desative os LEDs do teclado com apenas um comando.
- **Logs:** Armazena o estado atual no log localizado em `~/.log/keyboard_led_toggle.log`.
- **Integração com XFCE:** Pode ser facilmente configurado como um atalho de teclado.

## Requisitos

- **Xorg:** Este script depende do servidor gráfico Xorg.
- **xset:** Ferramenta necessária para controlar o LED do teclado.

## Instalação

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/toggle-led.git
   cd toggle-led
   chmod +x toggle_led.sh
   ./toggle_led.sh
