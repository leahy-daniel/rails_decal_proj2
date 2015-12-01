class AddSchoolTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :school_type, :string
  end
end
