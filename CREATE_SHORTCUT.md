# Criando um Atalho no XFCE para o Script `toggle_led.sh`

Este tutorial ensina como configurar um atalho de teclado no XFCE para executar o script `toggle_led.sh` e alternar os LEDs do teclado com uma combinação de teclas.

---

## Passo 1: Abra as Configurações do Teclado

1. Clique no menu de configurações do XFCE (geralmente acessado pelo menu principal).
2. Selecione a opção **Teclado**.

---

## Passo 2: Acesse a Aba "Atalhos de Aplicativos"

1. Na janela de configurações do teclado, clique na aba **Atalhos de Aplicativos**.
2. Clique no botão **Adicionar** para configurar um novo atalho.

---

## Passo 3: Configure o Comando

1. Na janela que aparecer, insira o caminho completo para o script:

/caminho/para/o/script/toggle_led.sh


Dica: Se o script estiver no diretório atual, você pode descobrir o caminho completo com o comando:
  
realpath toggle_led.sh

## Passo 4: Escolha a Combinação de Teclas
1. Após adicionar o comando, uma nova entrada será criada na lista de atalhos.
2. Clique nela e pressione a combinação de teclas desejada (por exemplo, Ctrl + Alt + L).
3. Certifique-se de escolher uma combinação que não esteja em uso por outro atalho.

## Passo 5: Teste o Atalho

1. Pressione a combinação de teclas configurada.
2. O LED do teclado deve alternar entre ativado e desativado a cada execução do script.

