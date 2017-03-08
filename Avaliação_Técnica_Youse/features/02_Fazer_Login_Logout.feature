# language: pt

Funcionalidade: Fazer Login e Logout
	Sendo o cliente da Youse 
	Posso realizar login
	Para realizar a cotacao de um seguro residencial
	E realizar logout apos termino da cotacao
	
	Cenario: Fazendo Login e Logout	
		Dado que eu esteja no site da Youse
		Quando eu clicar em 'Minha Conta'
		E informar 'E-mail' como meu e-mail pessoal
		E clicar no botao 'Proximo Passo'
		E informar 'Senha' como a minha senha de acesso
		E clicar no botao 'Entrar'
		Entao verei minha pagina inicial e a mensagem 'Login efetuado com sucesso.' como sucesso da operacao.
		E clicar em 'Ola,Bruno'
		E clicar em 'Sair'
		Entao verei a pagina inicial da Youse como sucesso da operacao.