class LikesController < ApplicationController
    before_action :find_like, only: [:destroy]

    def create
        @blog = Blog.all.find(params[:blog_id])
        @blog.likes.create(user_id: current_user.id, blog_id: @blog.id)
        redirect_to blog_path(@blog)
    end

    def destroy
        @like.destroy
        redirect_to blog_path(@blog)
    end

    private

    def find_like
        @blog = Blog.all.find(params[:blog_id])
        @like = @blog.likes.find(params[:id])
    end
end
