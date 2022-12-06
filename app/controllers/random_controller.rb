class RandomController < ApplicationController

    def index
        client = RandomApi::Client.new
        @random = client.random
        
    end

    def include_information
        client = RandomApi::Client.new
        @include = client.included
    end

    def exclude_information
        client = RandomApi::Client.new
        @exclude = client.excluded 
    end

    def filtered_result
        client = RandomApi::Client.new
        @filter = client.filtered
    end

end