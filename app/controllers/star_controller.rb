class StarController < ApplicationController
    def index
        client = StarApi::Client.new
        @people = client.people
    end 

    def planets
        client = StarApi::Client.new
        @planets = client.planet
    end 

    def starships
        client = StarApi::Client.new
        @starships = client.starship
    end 

    def films
        client = StarApi::Client.new
        @films = client.film
    end 

    def show
        client = StarApi::Client.new
        @films = client.single_film(params[:id])
    end 
end