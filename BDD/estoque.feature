Funcionalidade: Manter Movimentação de Estoque
    Como funcionário do departamento comercial Vilas Boas
              Eu quero ser capaz administrar o meu estoque com os campos data, número da nota fiscal, código interno, quantidade, produto e tipo de movimentação
    Para ter um controle das entradas e saídas dos produtos

        Contexto:
            Dado que o funcionário possui uma conta no sistema.
            
        Cenário: Cadastro de Estoque

            Dado que o funcionário acessa a página de cadastro de estoque
             Quando for enviado o cadastro com os campos de data, número da nota fiscal, código interno, quantidade e tipo de movimentação preenchidos
             Então será redirecionado para a lista com estoques já cadastrados
              E será exibido uma mensagem "Registro salvo com Sucesso."

        Cenário: Movimentação de Entrada

            Dado que o funcionário acessa a página de cadastro de estoque
             Quando selecionado o campo tipo de movimentação como entrada
             Então será adicionado a quantidade ao produto
              E será exibido uma mensagem "Registro salvo com Sucesso."
        
        Cenário: Movimentação de Saída

            Dado que o funcionário acessa a página de cadastro de estoque
             Quando selecionado o campo tipo de movimentação como saída
             Então será reduzido a quantidade do produto
              E será exibido uma mensagem "Registro salvo com Sucesso."

        Cenário: Data Não informada

            Dado que o funcionário acessa a página de cadastro de estoque
             Quando não é informado o campo data
             Então será exibido uma mensagem "Informe uma Data"
             
        Cenário: Número da Nota Fiscal Não informado

            Dado que o funcionário acessa a página de cadastro de estoque
             Quando não é informado o campo número da Nota Fiscal
             Então será exibido uma mensagem "Informe o Número da Nota Fiscal"
        
        Cenário: Código interno não informado

            Dado que o funcionário acessa a página de cadastro de estoque
             Quando Não é informado o código interno.
             Então será exibido uma mensagem "Informe o código interno"

        Cenário: Quantidade Não informada

            Dado que o funcionário acessa a página de cadastro de estoque
             Quando Não é informado a quantidade.
             Então será exibido uma mensagem "Informe a quantidade"
        
        Cenário: Tipo de Movimentação Não informado

            Dado que o funcionário acessa a página de cadastro de estoque
             Quando Não é informado o tipo de movimentação
             Então será exibido uma mensagem "Informe o tipo de movimentação do estoque"

        Cenário: Nenhum campo preenchido

            Dado que o funcionário acessa a página de cadastro de estoque
             Quando for enviado o cadastro sem preencher os campos
             Então será exibido uma mensagem "Preencha os campos obrigatórios"
        
        Cenário: Quantidade Indisponível

            Dado que o funcionário acessa a página de cadastra uma movimentação de estoque
             Quando for enviado o cadastro a quantidade igual ou menor que zero
             Então o status do produto será indisponível
        
        Cenário: Quantidade Disponível

            Dado que o funcionário acessa a página de cadastra uma movimentação de estoque
             Quando for enviado o cadastro a quantidade maior que zero
             Então o status do produto será disponível
        
         
        Cenário: Detalhes do estoque

            Dado que o funcionário acessa a lista de estoques cadastrados
             Quando selecionado um item do estoque para visualizar
             Então será exibido os valores preenchidos nos campos data, número da nota fiscal, código interno, quantidade, produto e tipo de movimentação
        
        
        Cenário: Exclusão do estoque

            Dado que o funcionário acessa a lista de estoques cadastrados
             Quando selecionado um item do estoque para exclusão
             Então será atualizado a lista
              E exibido uma mensagem "Registro Excluído"
        
        
        Cenário: Alteração do estoque

            Dado que o funcionário acessa a lista de produtos cadastrados
             Quando selecionado um produto para alteração
              E inserido os novos valores para os campos data, número da nota fiscal, código interno, quantidade, produto e tipo de movimentação
             Então será atualizado o estoque
              E exibido uma mensagem "Registro Salvo com Sucesso"

