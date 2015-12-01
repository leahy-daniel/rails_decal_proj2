class PostController < ApplicationController
	def show
		@post = Post.find params[:id]
	end
	def new
		@post = Post.new
		@course = Course.find params[:id]
	end
	def create
		Post.create post_params
		@post = Post.last
		@post.update(:user => current_user, :course => Course.find(params[:id]))
		if @post.save
			redirect_to user_path(current_user)
		else
			redirect_to root_path
		end
	end
	def post_params
		params.require(:post).permit(:title, :content)
	end
end
