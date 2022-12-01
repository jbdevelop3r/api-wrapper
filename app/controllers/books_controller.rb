class BooksController < ApplicationController
    def index
        client = BooksApi::Client.new
        @books = client.books
    end
end