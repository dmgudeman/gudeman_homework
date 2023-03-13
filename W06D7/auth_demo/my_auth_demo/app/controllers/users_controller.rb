

class UsersController < ApplicationController

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_url
        else
            redirect_to new_user_url
        end


    end

    def new
    end


    private

    def user_params
        params.require(:user).permit(:username, :password)

    end

end