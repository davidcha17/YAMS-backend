class ListsController < ApplicationController
    before_action :authorized, only: [:create]

    def create
        @list = @user.lists.create(list_params)
        # @snack = Snack.new(list_params)
        # @snack.user = @user
        # @snack.save
    
        render json: @list
    end
    
    
    private

    def list_params
        params.permit(:name)
    end

end
