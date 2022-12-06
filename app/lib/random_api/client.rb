class RandomApi::Client
    BASE_URL = "https://randomuser.me".freeze

    def random  
        request(
            endpoint: "api"
        )
    end

    def included(results= 4, inc="name, gender, nat, picture", noinfo=nil)
        request(
            endpoint: "api", 
            params: {results: results, inc: inc, noinfo: noinfo}
        )
    end 

    def excluded(results=5, exc="login, location, picture, nat")
        request(
            endpoint: "api", 
            params: {results: results, exec: exc}
        )
    end

    def filtered(results=3, gender="male", nat="us")
        request(
            endpoint: "api", 
            params: {results: results, gender: gender, nat: nat}
        )
    end

    def generated_credentials(password="upper,lower,1-16", inc="login")
        request(
            endpoint: "api", 
            params: {password: password, inc: inc}
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