class CreateBeaches < ActiveRecord::Migration[6.1]
  def change
    create_table :beaches do |t|
      t.string :name
      t.string :island
      t.string :shore
      t.integer :temp
      t.string :weather
      t.string :surf

      t.timestamps
    end
  end
end
