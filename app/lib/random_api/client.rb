class RandomApi::Client
    BASE_URL = "https://randomuser.me".freeze

    def random 
        request("api")
    end

    def included(results= 4, inc="name, gender, nat, picture", noinfo=nil)
        request("api", params = {results: results, inc: inc, noinfo: noinfo})
    end

    def excluded(results=2, exc="login,info,location,picture,nat")
        request("api", params = {results: results, exec: exc})
    end

    private
    
    def request(endpoint, params={})
        response = connection.get("#{endpoint}") do |request| 
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