class Subject < ActiveRecord::Base
	has_many :courses
	belongs_to :college
end
