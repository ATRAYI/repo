class AddCollumsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :age, :integer
    add_column :users, :dept, :string
  end
end
