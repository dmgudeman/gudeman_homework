

class SessionsController < ApplicationController
   
   
    def create
        user = User.find_by_credentials(
            params[:user][:username],
            params[:user][:password]
        )

        if user.nil?
            render json: "Invalid credentisls".to_json
        else
            # render json: "Welcome back #{user.username}!".to_json
            redirect_to user_url
        end
   end

   def new

   end

end