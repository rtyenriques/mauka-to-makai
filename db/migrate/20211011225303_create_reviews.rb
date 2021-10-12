class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :content
      t.boolean :family_freindly

      t.timestamps
    end
  end
end
