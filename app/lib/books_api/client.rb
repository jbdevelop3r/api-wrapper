class BooksApi::Client
    def books 
        connection = Faraday.new(url: 'https://simple-books-api.glitch.me')
        response = connection.get('books')
        JSON.parse(response.body)
    end
end