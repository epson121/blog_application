class AddPostIdColumnToComments < ActiveRecord::Migration
  def change
     change_table :comments do |t|
      t.references :post_id
    end
  end
end
