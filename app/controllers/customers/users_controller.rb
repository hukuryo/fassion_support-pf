class Customers::UsersController < ApplicationController
    before_action :set_user, only: [:likes]

    def index
        redirect_to new_user_registration_path
    end

    def likes
        @user = User.find(params[:id])
        likes = Like.where(user_id: @user.id).pluck(:post_id)
        @like_posts = Post.find(likes)
    end

    def show
        @user = User.find(params[:id])
        @posts = current_user.posts
    end

    def edit
        @user = current_user
    end

    def update
        @user = current_user
        @user.update(users_params)
        redirect_to user_path(current_user)
    end

    private

        def users_params
            params.require(:user).permit(:name)
        end

        def set_user
            @user = User.find(params[:id])
        end

end
