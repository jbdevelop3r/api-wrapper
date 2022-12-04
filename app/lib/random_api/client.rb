class RandomApi::Client
    def random 
        connection = Faraday.new(url: 'https://randomuser.me')
        response = connection.get('api')
        JSON.parse(response.body)
    end

    def included
        connection = Faraday.new(
            url: 'https://randomuser.me', 
            params: {
                results: 4,
                inc: "name, gender, nat, picture",
                noinfo: nil
            }
        )
        response = connection.get('api')
        JSON.parse(response.body)
    end

    def excluded
        connection = Faraday.new(
            url: 'https://randomuser.me', 
            params: {
                exec: "login,info,location,picture,nat",
                results: 2
            }
        )
        response = connection.get('api')
        JSON.parse(response.body)
    end
end