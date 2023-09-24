class Post < ApplicationRecord
  belongs_to :user
  
  attribute :upvote_count, :integer, default: 0

  def self.ransackable_attributes(auth_object = nil)
    ["contents", "created_at", "id", "subject", "updated_at", "upvote_count", "user_id"]
  end
end
