# language: pt

Funcionalidade: Autenticação
    Contexto: Acesso
        Dado que esteja na pagina de cadastro

        Cenário: Cadastro
            Quando realizar cadastro
            Entao deverá ser redirecionado para home


        Esquema do Cenário: Cadastro Exception
            Quando realizar cadastro "<tipo_erro>"
            Entao deverá ser exibida a mensagem de erro "<mensagem_erro>"

            Exemplos:
                | tipo_erro                       | mensagem_erro                              |
                | Campo nome em branco            | Você precisa cadastrar um Nome!            |
                | Campo email já existente        | Já existe uma conta para este e-mail!      |
                | Campo email incorreto           | Você precisa cadastrar um e-mail válido!   |
                | Campo senha em branco           | Você precisa cadastrar uma senha!          |
                | Campo confirmar senha em branco | As senhas não coincidem. Digite novamente. |
