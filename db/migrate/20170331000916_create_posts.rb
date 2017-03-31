class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :date
      t.integer :rate 
      t.text :opinion

      t.timestamps null: false
    end
  end
end
