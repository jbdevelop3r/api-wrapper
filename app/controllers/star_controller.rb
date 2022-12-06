class StarController < ApplicationController
    def index
        client = StarApi::Client.new
        @people = client.people
    end
end