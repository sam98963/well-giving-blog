class MainController < ApplicationController
  def home
    @q = Post.ransack(params[:q], sort: 'created_at desc')
    @posts = @q.result

    if params[:order].present?
      puts "Sorting order: #{params[:order]}"
      @posts = @posts.order(params[:order])
    else
      @posts = @posts.order('created_at desc')
    end 
  end 
end
