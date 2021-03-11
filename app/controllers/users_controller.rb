class UsersController < ApplicationController

    def index
        users = User.all

        render json: users
    end

    def login
        user = User.find_by(username: params["username"])

        if (user)
            render json: user
        else
            render json: {error: "User not found."}
        end
    end

end
