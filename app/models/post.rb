class Post < ApplicationRecord
  belongs_to :user

  attribute :upvote_count, :integer, default: 0
end
