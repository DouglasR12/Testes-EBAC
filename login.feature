Funcionalidade: Login no sistema
    Como usuário cadastrado
    Quero acessar o sistema com minhas credenciais
    Para utilizar as funcionalidades disponíveis

  Contexto:
    Dado que o sistema está disponível

  Cenário: Login bem-sucedido
    Dado que o usuário está na página de login
    Quando informar usuário válido e senha válida
    Então deve ser redirecionado para a página inicial

  Cenário: Login com credenciais inválidas
    Dado que o usuário está na página de login
    Quando informar usuário ou senha inválida
    Então deve visualizar mensagem de erro "Credenciais inválidas"

  Esquema do Cenário: Tentativas de login
    Dado que o usuário está na página de login
    Quando informar usuário "<usuario>" e senha "<senha>"
    Então o resultado esperado deve ser "<resultado>"

    Exemplos:
      | usuario   | senha     | resultado                |
      | joao      | 12345     | Login bem-sucedido       |
      | maria     | abcde     | Login bem-sucedido       |
      | joao      | errado    | Credenciais inválidas    |
      | desconhecido | 12345  | Credenciais inválidas    |
