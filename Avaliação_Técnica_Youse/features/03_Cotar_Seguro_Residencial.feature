# language: pt

Funcionalidade: Cotar Seguro Residencial
	Sendo o cliente da Youse 
	Posso acessar meu cadastro
	Para realizar a cotacao de um seguro residencial
	
	Cenario: Cotando um Seguro Residencial
		Dado que eu esteja no site da Youse
		Quando clicar no nome 'Seguro Residencial'
		E clicar no botao 'Cotacao Online' para cotar um seguro residencial
		E verei a pagina com a mensagem 'Oi. A gente quer te conhecer melhor, e rapidinho.' 
		E clicar no botao 'Casa'
		E informar o campo 'que fica no estado'
		E informar o campo 'no valor aproximado de'
		E informar o campo 'Gostaria de ser chamado por'
		E informar o campo 'e fale comigo no'
		E informar o campo 'ou envie um email para'
		E clicar no botao 'Escolher Coberturas'
		E clicar no botao 'Proximo Passo'
		E clicar no botao 'Preencher dados do imovel'
		E informar o campo 'CEP' com um CEP valido
		E validar informacao no campo 'no endereco'
		E validar informacao no campo 'bairro'
		E informar o campo 'numero'
		E informar o campo 'complemento'
		E informar o campo 'O imovel que quero proteger'
		E clicar no botao 'Preencher dados pessoais'
		E validar no campo 'E-mail' meu email de acesso
		E informar no campo 'Senha' minha senha de acesso
		E clicar no botao 'Concluir'
		E informar no campo 'Meu nome completo e'
		E informar no campo 'sou do sexo'
		E informar no campo 'Meu CPF e'
		E informar no campo 'nasci no dia'
		E informar no campo 'no pais'
		E informar no campo 'e atualmente moro no pais'
		E informar no campo 'trabalho como'
		E informar no campo 'a minha renda mensal e'
		E informar no campo 'meu endereco de correspondencia'
		E clicar no botao 'Pagamento'
		Entao verei a pagina para finalizar com a mensagem 'Para finalizar, insira os dados de pagamento'