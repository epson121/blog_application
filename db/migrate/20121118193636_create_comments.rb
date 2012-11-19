class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :text
      t.integer :post_id
      
      t.timestamps
    end
      change_table :comments do |t|
      t.references :post_id
    end
  end
end
