class RemoveAdminFromEmployees < ActiveRecord::Migration
  def up
    remove_column :employees, :admin
  end

  def down
    add_column :employees, :admin, :binary
  end
end
