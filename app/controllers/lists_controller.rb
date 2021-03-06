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
        @restaurants = @lists

        render json: @restaurants
    end

    def destroy
        @list = List.find_by(id: params[:id])
        @list.destroy
        render json: { message: "🖕" }
    end
    
    
    private

    def list_params
        params.permit(:user_id, :restaurant_id)
    end

end
