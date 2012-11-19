class AddIndexToComments2 < ActiveRecord::Migration
  def change
    drop_table :comments
    
    create_table :comments do |t|
      t.string :name
      t.string :text
      t.references :post
      
      t.timestamps
    end
 
      add_index :comments, :post_id
  end
end
