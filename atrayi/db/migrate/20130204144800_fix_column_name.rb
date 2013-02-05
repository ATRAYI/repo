class FixColumnName < ActiveRecord::Migration
  def up
	remove_column :name
  end

  def down
	add_column :user_name
  end
end
