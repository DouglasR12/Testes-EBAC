Funcionalidade: Configuração de produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Critérios de Aceitação:
1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
2 – Deve permitir apenas 10 produtos por venda
3 – Quando eu clicar no botão “limpar” deve voltar ao estado original

Cenário: Configuração obrigatória de produto
  Dado que estou na página de configuração do produto
  Quando eu tento adicionar ao carrinho sem selecionar cor, tamanho e quantidade
  Então o sistema deve exibir uma mensagem de erro
  E não deve permitir a inclusão no carrinho

Esquema do Cenário: Limite máximo de produtos
  Dado que estou configurando um produto
  Quando eu seleciono a quantidade <qtd>
  Então o sistema deve validar a quantidade
  E deve permitir apenas até 10 unidades

  Exemplos:
    | qtd |
    | 1   |
    | 5   |
    | 10  |
    | 11  |

Cenário: Botão limpar volta ao estado original
  Dado que selecionei cor, tamanho e quantidade de um produto
  Quando eu clico no botão "Limpar"
  Então todas as seleções devem ser removidas
  E o produto deve voltar ao estado inicial
