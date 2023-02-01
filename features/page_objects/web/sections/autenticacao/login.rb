require 'faker'

module Web
  module Sections
    module Autenticacao
      class Login < SitePrism::Section

        element :alert_login, 'div[class*=alert-danger]'
        element :input_usuario, 'input[name=email]'
        element :input_senha, 'input[name=password]'
        element :btn_entrar, 'input[value=Login]'


        def generate_user(tipo_erro=nil)
          Factory::Dynamic.user(tipo_erro)
        end

        def realizar_login
          @user = Factory::Static.static_data('valid_user')
          input_usuario.gset @user[:email]
          input_senha.gset @user[:senha]
          btn_entrar.gclick

          @user
        end

        def realizar_login_exception(tipo_erro)
          @user = generate_user(tipo_erro)

          input_usuario.gset @user[:email]
          input_senha.gset @user[:senha]
          btn_entrar.gclick

          @user
        end

      end
    end
  end
end
