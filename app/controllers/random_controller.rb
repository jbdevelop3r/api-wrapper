class RandomController < ApplicationController
    def index
        client = RandomApi::Client.new
        @random = client.random
        @selected = client.selected_people 
        @filtered = client.filtered_result
    end
    def show
        client = RandomApi::Client.new
    end
end