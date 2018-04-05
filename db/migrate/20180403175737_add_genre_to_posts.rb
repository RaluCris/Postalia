class AddGenreToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :genre, :string
  end
end
