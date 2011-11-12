Dado /^que exista um usuário na base com Email "([^"]*)" e Password "([^"]*)"$/ do |email, password|
  User.create! :email => email, :password => password, :password_confirmation => password
end

Quando /^eu acessar a página de login$/ do
  visit "/users/sign_in"
end

Quando /^eu digitar "([^"]*)" no campo "([^"]*)"$/ do |valor, campo|
  fill_in campo, :with => valor
end

Quando /^clicar no botão "([^"]*)"$/ do |entrar|
  click_button entrar
end

Então /^deverei ver na tela a mensagem "([^"]*)"$/ do |msg|
  page.should have_content(msg)
end
