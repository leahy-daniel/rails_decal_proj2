class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :major, :string
    add_column :users, :year, :string
  end
end
