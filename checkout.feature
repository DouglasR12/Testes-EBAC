Funcionalidade: Cadastro de Checkout

Critérios de Aceitação:
1 – Deve ser cadastrado com todos os dados obrigatórios, marcados com asteriscos
2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta

Esquema do Cenário: Validação de cadastro no checkout
  Dado que estou na página de checkout
  Quando eu preencho os campos obrigatórios:
    | nome        | sobrenome   | email             | endereço          |
    | <nome>      | <sobrenome> | <email>           | <endereço>        |
  Então o sistema deve validar os dados
  E exibir <mensagem>

  Exemplos:
    | nome    | sobrenome | email              | endereço          | mensagem                          |
    | João    | Silva     | joao.silva@email.com | Rua A, 123       | "Cadastro realizado com sucesso"  |
    | Maria   | Souza     | maria.souza@email  | Rua B, 456       | "Formato de e-mail inválido"      |
    | Pedro   | Santos    |                    | Rua C, 789       | "Campos obrigatórios não preenchidos" |
