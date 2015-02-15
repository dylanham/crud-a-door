class CreateDoors < ActiveRecord::Migration
  def change
    create_table :doors do |t|
      t.string :size
      t.string :color

      t.timestamps null: false
    end
  end
end
