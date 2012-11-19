class ChangeCommentRowNames < ActiveRecord::Migration
  def up
   drop_table :comments
      
    create_table :comments do |t|
      t.string :commenteer
      t.string :text
      t.references :post
      
      t.timestamps
    end
 
      add_index :comments, :post_id
  end
end
