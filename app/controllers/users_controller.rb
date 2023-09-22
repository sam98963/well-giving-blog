class UsersController < ApplicationController
  def my_account
    @user = current_user
    @posts = @user.posts.order(created_at: :desc)
  end
end
