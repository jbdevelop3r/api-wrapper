class RandomApi::Client
    def random 
        connection = Faraday.new(url: 'https://randomuser.me')
        response = connection.get('api')
        JSON.parse(response.body)
    end

    def selected_people 
        connection = Faraday.new(
            url: 'https://randomuser.me', 
            params: {results: 5}
        )
        response = connection.get('api')
        JSON.parse(response.body)
    end

    def filtered_result 
        connection = Faraday.new(
            url: 'https://randomuser.me', 
            params: {
                results: 2,
                inc: "name, gender, nat",
                noinfo: nil
            }
        )
        response = connection.get('api')
        JSON.parse(response.body)
    end
end