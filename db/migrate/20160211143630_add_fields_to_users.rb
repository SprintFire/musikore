class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string, unique: true
    add_column :users, :date_of_birth, :date
    add_column :users, :gender, "char(1)"
    add_column :users, :title, :string
  end
end
