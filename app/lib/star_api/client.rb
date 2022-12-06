class StarApi::Client
    BASE_URL = "https://swapi.dev/api".freeze

    def people  
        request(
            endpoint: "people"
        )
    end

    private
    
    def request(method = "get", endpoint: , params: {})
        response = connection.public_send(method, "#{endpoint}") do |request| 
            params.each do |k, v|
                request.params[k] = v
            end
        end
        JSON.parse(response.body)
    end
    
    def connection
        @connection = Faraday.new(url: BASE_URL)
    end
end