class MainController < ApplicationController
  def home
    @posts = Post.all
  end
end
