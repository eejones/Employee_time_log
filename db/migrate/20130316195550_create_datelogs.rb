class CreateDatelogs < ActiveRecord::Migration
  def change
    create_table :datelogs do |t|
      t.date :daylog
      t.integer :tottime
      t.integer :altnumeric
      t.references :employee

      t.timestamps
    end
    add_index :datelogs, :employee_id
  end
end
