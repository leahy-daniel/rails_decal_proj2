class AddSubjectIdToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :name, :string
    add_column :courses, :subject_id, :integer
  end
end
