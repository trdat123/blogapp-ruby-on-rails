class CommentsController < ApplicationController

    def create
        @blog = Blog.all.find(params[:blog_id])
        @comment = @blog.comments.create(params.require(:comment).permit(:body))
        redirect_to @blog
    end

    def destroy
        @blog = Blog.find(params[:blog_id])
        @comment = @blog.comments.find(params[:id])
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
