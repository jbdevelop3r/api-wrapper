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

    def credentials
        client = RandomApi::Client.new
        @credentials= client.generated_credentials
    end

end