class AddIndexToComments < ActiveRecord::Migration
  def change
    drop_table :comments
    
    create_table :comments do |t|
      t.string :name
      t.string :text
      
      t.timestamps
    end
      change_table :comments do |t|
      t.references :post_id
    end
    
     add_index :comments, :post_id
  end
end
