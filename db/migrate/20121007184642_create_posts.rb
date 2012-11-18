class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :description     

      t.timestamps
    end
    
    change_table :products do |t|
      t.references :part_number
    end
  end
end
