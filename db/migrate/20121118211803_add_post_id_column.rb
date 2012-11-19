class AddPostIdColumn < ActiveRecord::Migration
  def up
   change_table :comments do |t|
      t.references :post
      t.remove :post_id_id
    end
  end
end
