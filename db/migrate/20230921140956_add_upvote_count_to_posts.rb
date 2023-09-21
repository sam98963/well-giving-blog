class AddUpvoteCountToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :upvote_count, :integer
  end
end
