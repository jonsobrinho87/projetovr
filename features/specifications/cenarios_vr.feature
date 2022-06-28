#language: pt

@vrpat

Funcionalidade: Retorno do serviço que possua chave typeOfEstablishment
    Como um usuário do sistema
    Eu desejo realizar uma requisição na API 
    Para retornar do serviço uma chave especifica

Contexto: Acesso ao portal
    Dado o endereço da API para consulta dos estabelecimentos

    Cenário: Busca com sucesso
        Quando realizo uma consulta no serviço buscando uma chave especifica
        Então a API irá retornar os dados do serviço solicitado