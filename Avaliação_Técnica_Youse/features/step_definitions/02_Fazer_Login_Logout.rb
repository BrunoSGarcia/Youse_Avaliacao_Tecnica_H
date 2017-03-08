# enconding: utf-8
#!/usr/bin/env ruby

require 'rspec/expectations'
require 'capybara/rspec'
require 'test/unit'


Dado(/^que eu esteja no site da Youse$/) do
 
	visit 'http://www.youse.com.br'
		Capybara.page.driver.browser.manage.window.maximize

 end

Quando(/^eu clicar em 'Minha Conta'$/) do
  
	click_link 'Minha Conta'
  	expect(page).to have_content 'Para continuar, faça login ou registre-se.'

end

E(/^informar 'E-mail' como meu e-mail pessoal$/) do

  fill_in 'E-mail', :with => "brunoops@hotmail.com"

end

E(/^clicar no botao 'Proximo Passo'$/) do
  
  	page.find(:css, ".button--centered").click 
	

end

E(/^informar 'Senha' como a minha senha de acesso$/) do
 
	fill_in 'Senha', :with => "12345678"

end

E(/^clicar no botao 'Entrar'$/) do
  
	 page.find(:css, ".button--centered").click 

end

Entao(/^verei minha pagina inicial e a mensagem 'Login efetuado com sucesso\.' como sucesso da operacao\.$/) do
  
	expect(page).to have_content 'Login efetuado com sucesso.'

end

E(/^clicar em 'Ola,Bruno'$/) do
  
	page.find(:css, ".account-dropdown__menu__right").click

end

E(/^clicar em 'Sair'$/) do
  

	click_link 'Sair'

end

Entao(/^verei a pagina inicial da Youse como sucesso da operacao\.$/) do
  
	page.has_content?('Aproveita que já é de casa, faça seu seguro residencial e fique numa boa.')

end