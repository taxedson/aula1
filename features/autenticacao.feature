# language: pt
Funcionalidade: Autenticação de Usuários
	Para validar usuários
	Como um usuário
	Eu quero validar um usuário
	
	Cenário: Login de usuário inválido
		Dado que exista um usuário na base com Email "teste@mcfox.com.br" e Password "123456"
		Quando eu acessar a página de login 
		E eu digitar "teste@mcfox.com.br" no campo "Email"
		E eu digitar "654321" no campo "Password"
		E clicar no botão "Entrar"
		Então deverei ver na tela a mensagem "Invalid email or password."
	
	Cenário: Login de usuário válido
		Dado que exista um usuário na base com Email "teste@mcfox.com.br" e Password "123456"
		Quando eu acessar a página de login 
		E eu digitar "teste@mcfox.com.br" no campo "Email"
		E eu digitar "123456" no campo "Password"
		E clicar no botão "Entrar"
		Então deverei ver na tela a mensagem "Signed in successfully."
