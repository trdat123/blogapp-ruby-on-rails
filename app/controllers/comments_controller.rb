class CommentsController < ApplicationController
    before_action :find_comment, only: :destroy

    def create
        @blog = Blog.all.find(params[:blog_id])
        @comment = @blog.comments.create(comment_params)
        @comment.user = current_user
        @comment.save
        redirect_to @blog
    end

    def destroy
        @comment.destroy
        redirect_to blog_path(@blog)
    end

    private

    def comment_params
        params.require(:comment).permit(:body)
    end

    def find_comment
        @blog = Blog.find(params[:blog_id])
        @comment = @blog.comments.find(params[:id])
    end
end
