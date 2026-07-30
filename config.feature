Funcionalidade: Configurações de produto
  Como cliente
  Quero configurar cor, tamanho e quantidade
  Para personalizar minha compra 
  Cenário: Selecionar cor, tamanho e quantidade
    Dado que o cliente está na página de configurações do produto
    Quando selecionar a cor "vermelho"
    E selecionar o tamanho "M"
    E selecionar a quantidade "2"
    Então o sistema deve permitir adicionar o produto ao carrinho com as configurações selecionadas

  Esquema do Cenário: Validar quantidade de produtos
    Dado que o cliente está na página de configurações do produto
    Quando selecionar a quantidade "<quantidade>"
    Então o sistema deve exibir "<mensagem>"

    Exemplos:
      | quantidade | mensagem                                |
      | 1          | Quantidade válida                       |
      | 5          | Quantidade válida                       |
      | 11         | Quantidade excedida, máximo permitido 10|

