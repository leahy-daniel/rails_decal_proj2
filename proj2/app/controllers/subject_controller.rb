class SubjectController < ApplicationController
	def index
		@college = College.find params[:id]
		@subjects = @college.subjects
	end
end
