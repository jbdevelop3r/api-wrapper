class RandomController < ApplicationController
    def index
        client = RandomApi::Client.new
        @random = client.random
    end
end