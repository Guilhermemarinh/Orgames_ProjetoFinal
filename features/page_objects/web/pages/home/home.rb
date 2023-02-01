require_relative '../../sections/headers/main_header.rb'
require_relative '../../sections/autenticacao/login.rb'

module Web
  module Pages
    module Home
      class Home < SitePrism::Page
        set_url '/'

        section :main_header, Web::Sections::Headers::MainHeader, '.header-content'
        section :login, Web::Sections::Autenticacao::Login, 'div[class*=main-content]'

      end
    end
  end
end
