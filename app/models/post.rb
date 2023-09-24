class Post < ApplicationRecord
  belongs_to :user

  default_scope -> { order(created_at: :desc) }
  
  attribute :upvote_count, :integer, default: 0

  def self.ransackable_attributes(auth_object = nil)
    ["contents", "created_at", "id", "subject", "updated_at", "upvote_count", "user_id"]
  end
end
