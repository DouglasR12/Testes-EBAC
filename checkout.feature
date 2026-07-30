Funcionalidade: Checkout
  Como cliente
  Quero finalizar minha compra
  Para receber meus produtos

  Esquema do Cenário: Finalizar compra com diferentes formas de pagamento
    Dado que o cliente está na página de checkout
    Quando selecionar a forma de pagamento "<forma>"
    Então o sistema deve exibir a mensagem "<mensagem>"

    Exemplos:
      | forma        | mensagem                          |
      | cartão       | Pagamento realizado com sucesso   |
      | boleto       | Boleto gerado com sucesso         |
      | pix          | Pagamento via PIX confirmado      |

