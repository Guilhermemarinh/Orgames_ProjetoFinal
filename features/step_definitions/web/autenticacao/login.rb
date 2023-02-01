Quando("acessar a página de login") do
  @main_header.acessar_login
end

Quando("realizar login") do
  @login = @home.login
  @login.realizar_login
end

Entao("deverá ser exibido o nome do usuário na home") do
  expect(@main_header.user_name.text).to have_content /#{@user[:name]}/i
end

Quando("realizar login com {string}") do |tipo_erro|
  @login = @home.login
  @login.realizar_login_exception(tipo_erro)
end

Entao("deverá ser exibida a mensagem de erro {string}") do |mensagem_erro|
  expect(@login.alert_login).to have_content mensagem_erro
end
