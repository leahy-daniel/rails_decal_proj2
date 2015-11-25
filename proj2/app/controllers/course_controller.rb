class CourseController < ApplicationController
	def index
		@subjects = Subject.find params[:id]
		@courses = @subjects.courses
	end
	def show
		@course = Course.find params[:id]
		@posts = @course.posts
	end
end
