# language: pt

Funcionalidade: Autenticação
  Contexto: Acesso
    Dado que esteja na home

    @login
    Cenário: Login
      Quando acessar a página de login
      E realizar login
      Entao deverá ser exibido o nome do usuário na home

    @login_exception
    Esquema do Cenário: Login Exception
      Quando acessar a página de login
      E realizar login com "<tipo_erro>"
      Entao deverá ser exibida a mensagem de erro "<mensagem_erro>"

      Exemplos:
        | tipo_erro             | mensagem_erro                                          |
        | Campo email incorreto | O email ou a senha estão errados. Por favor verifique. |
        | Campo email em branco | O email ou a senha estão errados. Por favor verifique. |
        | Campo senha incorreta | O email ou a senha estão errados. Por favor verifique. |
        | Campo senha em branco | O email ou a senha estão errados. Por favor verifique. |
