class Post < ApplicationRecord
  belongs_to :user

  default_scope -> { order(created_at: :desc) }
  
  attribute :upvote_count, :integer, default: 0
end
