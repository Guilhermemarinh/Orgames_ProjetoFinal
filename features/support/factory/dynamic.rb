require 'faker'
require 'cpf_faker'

module Factory
  class Dynamic

    def self.with_error(data, tipo_erro)
      case tipo_erro
      when 'Campo email em branco'
        data[:email] = ''
      when 'Campo email incorreto'
        data[:email] = 'ghj12s@'
      when 'Campo senha incorreta'
        data[:name] = '1234pass'
      when 'Campo senha em branco'
        data[:senha] = ''
      end
      data
    end

    def self.user(tipo_erro)
      @user = {
        :name => "Test Automation #{Faker::Name.first_name}",
        :email => "#{Faker::Name.first_name}14@hotmail.com",
        :senha => 'senha123',
        :produto => Faker::Drone.name
      }

      @user = Dynamic.with_error(@user, tipo_erro) if tipo_erro

      @user
    end
  end
end
