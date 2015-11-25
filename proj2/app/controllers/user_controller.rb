class UserController < ApplicationController
	def show
		@posts = current_user.posts
	end
end
