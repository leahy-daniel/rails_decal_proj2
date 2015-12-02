class CommentController < ApplicationController
	def show
		@comment = Comment.find params[:id]
	end
	def new
		@comment = Comment.new
		@post = Post.find params[:id]
	end
	def create
		Comment.create comment_params
		@comment = Comment.last
		@post = Post.find params[:id]
		@comment.update(:user => current_user, :post => Post.find(params[:id]))
		if @comment.save
			redirect_to post_path(@post)
		else
			redirect_to root_path
		end
	end
	def comment_params
		params.require(:comment).permit(:content)
	end
end
