class CommentController < ApplicationController
	def show
		@post = Comment.find params[:id]
	end
	def new
		@post = Comment.new
		@post = Post.find params[:id]
	end
	def create
		Comment.create comment_params
		@comment = Comment.last
		@comment.update(:user => current_user, :post => Post.find(params[:id]))
		if @comment.save
			redirect_to post_path(@post)
		else
			redirect_to root_path
		end
	end
	def comment_params
		params.require(:post).permit(:content)
	end
end
