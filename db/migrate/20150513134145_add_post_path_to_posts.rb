class AddPostPathToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :post_path, :string
  end
end
