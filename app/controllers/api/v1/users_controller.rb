class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users, include: :trip
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end
    
    def new
        @user = User.new
        render json: @user
    end

    def create
        @user = User.create(user_params)
        render json: @user
    end

    def edit
        @user = User.find(params[:id])
        render json: @user
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:name, :pic, :username, :password_digest, :email)
    end

end
