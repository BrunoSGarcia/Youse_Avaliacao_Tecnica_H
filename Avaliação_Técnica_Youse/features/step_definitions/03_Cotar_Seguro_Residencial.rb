# enconding: utf-8
#!/usr/bin/env ruby

require 'rspec/expectations'
require 'capybara/rspec'
require 'test/unit'


Dado(/^que eu esteja no site da Youse$/) do
 
	visit 'http://www.youse.com.br'
		Capybara.page.driver.browser.manage.window.maximize

 end

Quando(/^clicar no nome 'Seguro Residencial'$/) do
  
	page.find(:css, "html body#container.page__main div.site-wrapper div.site-content section.featured-products div.g_container ul.g_row.featured__list li.g_m_4-4.g_t_1-3.g_d_4-12 div.featured-products__item.home.first a.header").click

end

E(/^clicar no botao 'Cotacao Online' para cotar um seguro residencial$/) do

	page.find(:css, ".product-banner__card .button-rounded.bt-quotation").click 
	
  
end

E(/^verei a pagina com a mensagem 'Oi\. A gente quer te conhecer melhor, e rapidinho\.'$/) do
  
  	sleep(5)
		expect(page).to have_content 'Oi. A gente quer te conhecer melhor, é rapidinho.'
	sleep(4)		
end

E(/^clicar no botao 'Casa'$/) do
  
	page.find(:xpath, "/html/body/section/form/fieldset[1]/fieldset[1]/div/div[1]").click

		sleep(3)

end

E(/^informar o campo 'que fica no estado'$/) do
  
	find('#home_order_flow_pricing_requirements_property_attributes_address_attributes_state').find(:xpath, '/html/body/section/form/fieldset[1]/fieldset[2]/select/option[26]').select_option

end

E(/^informar o campo 'no valor aproximado de'$/) do
 
	fill_in 'home_order_flow_pricing_requirements_property_attributes_price', :with => '500000'

end

E(/^informar o campo 'Gostaria de ser chamado por'$/) do
  
  	fill_in 'home_order_flow_pricing_requirements_lead_person_attributes_name', :with => 'Bruno'

end

E(/^informar o campo 'e fale comigo no'$/) do
  
	fill_in 'home_order_flow_pricing_requirements_lead_person_attributes_phone', :with => '9999999999'

end

E(/^informar o campo 'ou envie um email para'$/) do
  
	fill_in 'home_order_flow_pricing_requirements_lead_person_attributes_email', :with => 'brunoops@hotmail.com'

end

E(/^clicar no botao 'Escolher Coberturas'$/) do
 
 page.find(:xpath, "/html/body/section/form/fieldset[2]/fieldset[2]/input").click 

end

E(/^clicar no botao 'Proximo Passo'$/) do
 
 expect(page).to have_content 'Pronto, Bruno!'

 	page.find(:xpath, "/html/body/section[1]/form/fieldset/input").click

end

E(/^clicar no botao 'Preencher dados do imovel'$/) do
  
	expect(page).to have_content 'Sugestões de Assistências Youse para você.'

page.find(:xpath, "/html/body/section[1]/form/div/fieldset/input").click

end

E(/^informar o campo 'CEP' com um CEP valido$/) do
  
	fill_in 'home_order_flow_property_data_property_attributes_address_attributes_zipcode', :with => '06142180'

end

E(/^validar informacao no campo 'no endereco'$/) do
  
  	expect(page).to have_field('home_order_flow_property_data_property_attributes_address_attributes_street', with: 'Rua Maria Therezinha Bonilha')

end

E(/^validar informacao no campo 'bairro'$/) do

expect(page).to have_field('home_order_flow_property_data_property_attributes_address_attributes_neighborhood', with: 'Novo Osasco')  
	expect(page).to have_field('home_order_flow_property_data_property_attributes_address_attributes_city', with: 'Osasco')
		expect(page).to have_field('home_order_flow_property_data_property_attributes_address_attributes_state', with: 'SP')
end

E(/^informar o campo 'numero'$/) do
 
	fill_in 'home_order_flow_property_data_property_attributes_address_attributes_number', :with => '1219'

end

E(/^informar o campo 'complemento'$/) do

  fill_in 'home_order_flow_property_data_property_attributes_address_attributes_complement', :with => 'casa 1'

end

E(/^informar o campo 'O imovel que quero proteger'$/) do
  
	find('#home_order_flow_property_data_property_attributes_feature').find(:xpath, '/html/body/section[1]/form/fieldset/fieldset/fieldset[2]/select/option[1]').select_option

		sleep(6)
end

E(/^clicar no botao 'Preencher dados pessoais'$/) do
  
	page.find(:xpath, "/html/body/section[1]/form/fieldset/p/input").click

end

E(/^validar no campo 'E\-mail' meu email de acesso$/) do

	expect(page).to have_field('user_email', with: 'brunoops@hotmail.com') 

end

E(/^informar no campo 'Senha' minha senha de acesso$/) do
  
	fill_in 'user_password', :with => '12345678'

end

E(/^clicar no botao 'Concluir'$/) do
  
	page.find(:xpath, "/html/body/div[4]/form/div/input").click

end

E(/^informar no campo 'Meu nome completo e'$/) do

	fill_in 'home_order_flow_insured_person_data_insured_person_attributes_name', :with => 'Bruno dos Santos Garcia'

end

E(/^informar no campo 'sou do sexo'$/) do
  
	find('#home_order_flow_insured_person_data_insured_person_attributes_gender').find(:xpath, '/html/body/section[1]/form/fieldset[1]/fieldset[2]/select/option[2]').select_option

end

E(/^informar no campo 'Meu CPF e'$/) do

	fill_in 'home_order_flow_insured_person_data_insured_person_attributes_cpf', :with => '40626297800'

end

E(/^informar no campo 'nasci no dia'$/) do
  
	fill_in 'home_order_flow_insured_person_data_insured_person_attributes_date_of_birth', :with => '06021993'

end

E(/^informar no campo 'no pais'$/) do
  
	find('#home_order_flow_insured_person_data_insured_person_attributes_nationality').find(:xpath, '/html/body/section[1]/form/fieldset[1]/fieldset[5]/select/option[32]').select_option

end

E(/^informar no campo 'e atualmente moro no pais'$/) do
  
	find('#home_order_flow_insured_person_data_insured_person_attributes_country_of_residence').find(:xpath, '/html/body/section[1]/form/fieldset[1]/fieldset[6]/select/option[32]').select_option	

end

E(/^informar no campo 'trabalho como'$/) do
  
  	page.find(:xpath, "/html/body/section[1]/form/fieldset[2]/fieldset[1]/span/span[1]/span/span[1]/span").find(:xpath, '/html/body/section[1]/form/fieldset[2]/fieldset[1]/span/span[1]/span/span[2]').click
		find(:xpath, '/html/body/span[15]/span/span[1]/input').set("Analista de desenvolvimento de sistemas")
			page.find(:xpath, "/html/body/section[1]/form/fieldset[2]/fieldset[1]/select/option[63]").click


end

Quando(/^informar no campo 'a minha renda mensal e'$/) do
  
	find('#home_order_flow_insured_person_data_insured_person_attributes_salary_range').find(:xpath, '/html/body/section[1]/form/fieldset[2]/fieldset[2]/select/option[4]').select_option

end

Quando(/^informar no campo 'meu endereco de correspondencia'$/) do
  
  find('#home_order_flow_insured_person_data_mailing_address_is_property_address').find(:xpath, '/html/body/section[1]/form/fieldset[3]/fieldset/fieldset/select/option[1]').select_option

end

Quando(/^clicar no botao 'Pagamento'$/) do
 
	page.find(:xpath, "/html/body/section[1]/form/fieldset[3]/button").click

end

Entao(/^verei a pagina para finalizar com a mensagem 'Para finalizar, insira os dados de pagamento'$/) do
  
	expect(page).to have_content 'Para finalizar, insira os dados de pagamento.'

end
