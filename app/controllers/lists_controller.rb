class ListsController < ApplicationController
    before_action :authorized, only: [:create, :show, :index, :edit]

    def create
        # byebug
        # @list = @user.lists.create(list_params)
        @list = List.create(user_id: @user.id, restaurant_id: params[:id])
        render json: @list
    end

    def index 
        # @list = List.find_by(params@user.list)
        @restaurants = @user.restaurants

        render json: @restaurants
    end
    
    
    private

    def list_params
        params.permit(:user_id, :restaurant_id)
    end

end
