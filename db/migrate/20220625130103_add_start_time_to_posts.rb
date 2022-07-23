class AddStartTimeToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :number ,:string
    add_column :posts, :price ,:string
    add_column :posts, :address, :text
  end
end
