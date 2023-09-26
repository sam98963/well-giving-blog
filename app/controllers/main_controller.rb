class MainController < ApplicationController
  def home
    @q = Post.ransack(params[:q])
    @q.sorts = 'created_at desc' if @q.sorts.empty?  # Set default to newest first.
    @posts = @q.result
  end
end

