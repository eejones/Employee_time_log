class AddDetailsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :admin, :boolean
    add_column :employees, :password_digest, :string
    add_column :employees, :email, :string
    add_column :employees, :remember_token, :string
  end
end
