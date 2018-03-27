class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  def self.search(search)
  where("title LIKE ? OR content LIKE ? ", "%#{search}%", "%#{search}%") 
end

end
