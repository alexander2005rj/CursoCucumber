#language: pt

Funcionalidade: Cadastro de contas

Como um usuário 
Gostaria de cadastrar contas
Para que eu possa distribuir meu dinheiro de uma forma mais organizada

@ignore
Cenário: Deve inserir uma conta com sucesso
Dado que estou acessando a aplicação
Quando informo o usuário "alexander2005rj@gmail.com"
E a senha "123456"
E seleciono entrar
Então visualizo a página inicial
Quando seleciono Contas
E seleciono Adicionar
E informo a conta "Conta de Teste"
E seleciono Salvar
Então a conta é inserida com sucesso


Cenário: Não deve inserir uma conta sem nome
Dado que estou acessando a aplicação
Quando informo o usuário "alexander2005rj@gmail.com"
E a senha "123456"
E seleciono entrar
Então visualizo a página inicial
Quando seleciono Contas
E seleciono Adicionar
E seleciono Salvar
Então sou notificar que o nome da conta é obrigatório


Cenário: Não deve inserir uma conta com nome já existente 
Dado que estou acessando a aplicação
Quando informo o usuário "alexander2005rj@gmail.com"
E a senha "123456"
E seleciono entrar
Então visualizo a página inicial
Quando seleciono Contas
E seleciono Adicionar
E informo a conta "Conta de Teste"
E seleciono Salvar
Então sou notificado que já existe uma conta com esse nome



#@funcionais
#Funcionalidade: Cadastro de contas

#	Como um usuário 
#	Gostaria de cadastrar contas
#	Para que eu possa distribuir meu dinheiro de uma forma mais organizada
	
#Contexto:
#	Dado que desejo adicionar uma conta
	
#Esquema do Cenário: Deve validar regras cadastro contas
#	Quando adiciono a conta "<conta>"
#	Então recebo a mensagem "<mensagem>"
	
#Exemplos:
#   | conta 						| mensagem 														| 
#   | Conta de Teste 	| Conta adicionada com sucesso! 			|
#   |    							| Informe o nome da conta 						|
#   | Conta mesmo nome | Já existe uma conta com esse nome! 	|
