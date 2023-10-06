class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  def edit
    @post = Post.find(params[:id])
  end

  def create
    Rails.logger.info("Received parameters: #{params.inspect}")
    @post = current_user.posts.build(post_params)

    respond_to do |format|
      if @post.save
        flash[:notice] = "Post was successfully created."
        format.html { redirect_to root_path, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        flash[:alert] = "Failed to create the post"
        logger.error("Failed: #{@post.errors}")
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    Rails.logger.info("Update called")
    respond_to do |format|
      @post = Post.find(params[:id])
      if @post.update(post_params)
        format.html { redirect_to my_account_path, notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post was successfully deleted."
    respond_to do |format|
      format.html { redirect_to my_account_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def upvote
    @post = Post.find(params[:id])
    @post.increment!(:upvote_count)
    redirect_to root_path
  end


  private
    def set_post
      @post = Post.find(params[:id])
    end

    # Params for post request.
    def post_params
      params.require(:post).permit(:subject, :contents).merge(user_id: current_user.id)
    end
    
    
    
    
end
