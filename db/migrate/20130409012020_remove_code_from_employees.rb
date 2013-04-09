class RemoveCodeFromEmployees < ActiveRecord::Migration
  def up
    remove_column :employees, :code
  end

  def down
    add_column :employees, :code, :string
  end
end
