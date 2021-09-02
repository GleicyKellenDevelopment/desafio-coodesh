#encoding: UTF-8
#language: pt

Funcionalidade: Manter Produto
    Como funcionário do departamento comercial Vilas Boas
              Eu quero ser capaz gerenciar os meus produtos com os campos obrigatórios código interno, código de barras, descrição, preço, estoque junto com o campo opcional informações
    Para ter um controle das minhas mercadorias

        Contexto:
            Dado que o funcionário possui uma conta no sistema
        
        Cenário: Cadastro de Produto

            Dado que o funcionário acessa a página de cadastro de produto
             Quando preenche os campos de código interno, código de barras, descrição, informações, preço
             Então será redirecionado para a lista de produtos já cadastrados
              E será exibido uma mensagem "Registro salvo com Sucesso."

        Cenário: Status Disponível do Produto

            Dado que o funcionário acessa a página de cadastro de produto
             Quando enviar os dados válidos cadastrados
              E a quantidade de estoque for maior que 0 (zero)
             Então o atributo status recebe o valor de Disponível
        
        Cenário: Status Indisponível do Produto

            Dado que o funcionário acessa a página de cadastro de produto
             Quando enviar os dados válidos cadastrados
              E a quantidade de estoque for menor ou igual a (zero)
             Então o atributo status recebe o valor de Indisponível

        Cenário: Código interno não informado

            Dado que o funcionário acessa a página de cadastro de produto
             Quando Não é informado o código interno.
             Então será exibido uma mensagem "Informe o código interno"
   

        Cenário: Código de Barras Não informado

            Dado que o funcionário acessa a página de cadastro de produto
             Quando Não é informado o Código de barras.
             Então será exibido uma mensagem "Informe o código de barras"

        
        Cenário: descrição não informado

            Dado que o funcionário acessa a página de cadastro de produto
             Quando Não é informado a descrição
             Então será exibido uma mensagem "Informe a descrição"


        Cenário: Preço Não informado

            Dado que o funcionário acessa a página de cadastro de produto
             Quando Não é informado o Preço.
             Então será exibido uma mensagem "Informe o preço"

        Cenário: Estoque Não informado

            Dado que o funcionário acessa a página de cadastro de produto
             Quando não for informado o estoque
             Então será exibido uma mensagem "Preencha o Estoque"
        
        Cenário: Nenhum campo preenchido

            Dado que o funcionário acessa a página de cadastro de produto
             Quando for enviado o cadastro sem preencher os campos
             Então será exibido uma mensagem "Preencha os campos obrigatórios"
  
        Cenário: Preço com valor 0 (zero)

            Dado que o funcionário acessa a página de cadastro de produto
             Quando for encaminhado o cadastro com o valor do preço igual a zero
             Então será exibido uma mensagem "Informe um valor maior que zero"
        
        Cenário: Detalhes do produto

            Dado que o funcionário acessa a lista de produtos cadastrados
             Quando selecionado um produto para visualizar
             Então será exibido os valores preenchidos nos campos código interno, código de barras, descrição, informações, preço
        
        
        Cenário: Exclusão do produto

            Dado que o funcionário acessa a lista de produtos cadastrados
             Quando selecionado um produto para Exclusão
             Então será atualizado a lista
              E exibido uma mensagem "Registro Excluído"
        
        
        Cenário: Alteração do produto

            Dado que o funcionário acessa a lista de produtos cadastrados
             Quando selecionado um produto para Alteração
              E inserido os novos valores para os campos código interno, código de barras, descrição, informações, preço
             Então será atualizado o produto
              E exibido uma mensagem "Registro Salvo com Sucesso"
        
        Cenário: Códigos Internos e Códigos de Barras iguais

            Dado que o funcionário acessa a lista de produtos cadastrados
             Quando enviado o cadastro com o código interno e código de barras iguais
             Então será exibido uma mensagem "O código interno e código de barras não podem ser iguais"
        


