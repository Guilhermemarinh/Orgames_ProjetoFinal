module Web
  module Sections
    module Headers
      class MainHeader < SitePrism::Section
        element :user_name, 'strong:nth-child(1)'
        element :btn_login, '.login'

        def acessar_login
          btn_login.gclick
        end
      end
    end
  end
end
