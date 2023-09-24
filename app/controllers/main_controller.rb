class MainController < ApplicationController
  def home
    @q = Post.ransack(params[:q])
    @posts = @q.result
  end
end
