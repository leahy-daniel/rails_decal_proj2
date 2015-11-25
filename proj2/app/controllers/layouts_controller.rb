class LayoutsController < ApplicationController
	def index
		@colleges = College.all
	end
end