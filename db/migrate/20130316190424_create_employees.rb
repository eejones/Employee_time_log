class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :title
      t.string :code
      t.integer :tottime
      t.integer :altid
      t.integer :division_id
      t.datetime :creation
      t.binary :admin

      t.timestamps
    end
  end
end
