class RestaurantsController < ApplicationController


    def index
        @restaurants = Restaurant.all
        # byebug
        render json: @restaurants
    end

    def show
        
    end


end
