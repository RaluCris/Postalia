class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :votes

  def vote_for(current_user)
    votes.find_by(user_id:
      current_user.id).presence ||
      votes.new
  end

  def update_votes
    self.update(total_votes: self.votes.sum(:vote))
  end
end
