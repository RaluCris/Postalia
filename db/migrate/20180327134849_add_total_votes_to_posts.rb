class AddTotalVotesToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :total_votes, :integer
  end
end
