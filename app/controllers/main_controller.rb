class MainController < ApplicationController
  def home
    @q = Post.ransack(params[:q])
    @q.sorts = 'created_at desc' if @q.sorts.empty?  # Set default sorting to "newest first" if no sorting is specified
    @posts = @q.result
  end
end

