class RandomController < ApplicationController
    def index
        client = RandomApi::Client.new
        @random = client.random
        @include = client.included
        @exclude = client.excluded
    end
    def show
        client = RandomApi::Client.new
    end
end