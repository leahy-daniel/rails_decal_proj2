class AddCollegeIdToSubject < ActiveRecord::Migration
  def change
  	add_column :subjects, :name, :string
    add_column :subjects, :college_id, :integer
  end
end
