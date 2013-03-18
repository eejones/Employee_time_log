class CreateTimelogs < ActiveRecord::Migration
  def change
    create_table :timelogs do |t|
      t.string :type
      t.integer :altcatid
      t.integer :hourlog
      t.string :description
      t.references :datelog

      t.timestamps
    end
    add_index :timelogs, :datelog_id
  end
end
