class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :correct_user, except: [:index]

    # Def function to show all users
    def index
        @users = User.all
    end

    # Def function to show the user profile
    def show
        @user = User.find(params[:id])
        @posts = Post.all.order('created_at DESC')
    end

    # Def function to check if the current user is the same as the user being viewed
    def correct_user
        @user = User.find(params[:id])
        unless current_user == @user
            respond_to do |format|
                format.html { redirect_to root_path, notice: "You are not authorized to view this page." }
                format.json { render json: @user.errors, status: :unauthorized}
            end
        end
    end

end
