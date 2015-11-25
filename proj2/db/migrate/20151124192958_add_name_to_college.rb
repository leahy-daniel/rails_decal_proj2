class AddNameToCollege < ActiveRecord::Migration
  def change
    add_column :colleges, :name, :string
  end
end
