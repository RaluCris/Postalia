class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.references :post, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :vote

      t.timestamps
    end
  end
end
