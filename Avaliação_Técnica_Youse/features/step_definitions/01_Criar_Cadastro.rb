# enconding: utf-8
#!/usr/bin/env ruby

require 'rspec/expectations'
require 'capybara/rspec'
require 'test/unit'

Dado(/^que eu esteja no site da Youse$/) do
 
		Capybara.page.driver.browser.manage.window.maximize
	visit 'http://www.youse.com.br'
	

 end

Quando(/^eu clicar em 'Minha Conta'$/) do

  	click_link 'Minha Conta'
  	expect(page).to have_content 'Para continuar, faça login ou registre-se.'
end

E(/^clicar em 'Cadastre\-se' para criar meu cadastro$/) do
  
	click_link 'Cadastre-se'

	expect(page).to have_content 'Cadastre-se para ser um Youser'

end
  
E(/^informar 'Nome' como meu nome completo$/) do 
	
	fill_in 'Nome', :with => "Bruno Garcia" 

end

E(/^informar 'E\-mail' como meu e\-mail pessoal$/) do
  
	fill_in 'E-mail', :with => "brunoops.bg@gmail.com"

end

E(/^informar 'Senha' como minha senha de acesso$/) do
 
fill_in 'Senha', :with => "123456"

end

E(/^informar 'Confirme sua senha' como confirmacao da minha senha de acesso$/) do
  
fill_in 'Confirme sua senha', :with => "123456"

end

Quando(/^clicar em 'Enviar Cadastro' para submeter meus dados$/) do
  
	page.find(:xpath, "/html/body/div[2]/article/form/div/input").click

end

Entao(/^verei minha pagina inicial e a mensagem 'Bem\-vindo! VocÃª realizou seu cadastro com sucesso\.' como sucesso da operacao$/) do
  
	expect(page).to have_content 'Bem vindo! Você realizou seu registro com sucesso.'

end