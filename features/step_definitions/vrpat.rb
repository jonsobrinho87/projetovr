Dado('o endereço da API para consulta dos estabelecimentos') do
    puts "\nINICIANDO ACESSO PARA CONSULTAR API"

    @response = HTTParty.get('https://portal.vr.com.br/api-web/comum/enumerations/VRPAT', 
                headers: {
                            "Content-Type" => 'application/json'
                }
    )

end
  
Quando('realizo uma consulta no serviço buscando uma chave especifica') do
    puts "\nREALIZA CONSULTA BUSCANDO PELA CHAVE"

    @token = @response.parsed_response['typeOfEstablishment']

end
  
Então('a API irá retornar os dados do serviço solicitado') do
    puts "\nVALIDA O RETORNO IMPRIMINDO API's SOLICITADAS"

    puts "\nRESPOSTA:\n"
    puts @token

    
end 