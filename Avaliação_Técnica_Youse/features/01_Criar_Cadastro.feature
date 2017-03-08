# language: pt

Funcionalidade: Criar um Cadastro
	Sendo o cliente da Youse 
	Posso criar um cadastro
	Para realizar a cotacao de um seguro residencial
	
	Cenario: Criando um cadastro
		Dado que eu esteja no site da Youse
		Quando eu clicar em 'Minha Conta'
		E clicar em 'Cadastre-se' para criar meu cadastro
		E informar 'Nome' como meu nome completo
		E informar 'E-mail' como meu e-mail pessoal
		E informar 'Senha' como minha senha de acesso
		E informar 'Confirme sua senha' como confirmacao da minha senha de acesso
		E clicar em 'Enviar Cadastro' para submeter meus dados
		Entao verei minha pagina inicial e a mensagem 'Bem-vindo! Você realizou seu cadastro com sucesso.' como sucesso da operacao
 

