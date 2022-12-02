class RandomApi::Client
    def random 
        connection = Faraday.new(url: 'https://randomuser.me')
        response = connection.get('api')
        JSON.parse(response.body)
    end
end