class SubjectController < ApplicationController
	def index
		@subjects = Subject.find params[:id]
		@courses = @subjects.courses
	end
end
