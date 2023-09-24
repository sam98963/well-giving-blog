class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result
  end



  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end


  # GET /posts/new
  def new
    @post = Post.new
  end


  # POST /posts or /posts.json
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

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    Rails.logger.info("Update called")
    respond_to do |format|
      @post = Post.find(params[:id])
      if @post.update(post_params)
        format.html { redirect_to root_path, notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post was successfully deleted."
    respond_to do |format|
      format.html { redirect_to my_account_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  # Upvote /post/:id
  def upvote
    @post = Post.find(params[:id])
    @post.increment!(:upvote_count)
    redirect_to root_path
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:subject, :contents).merge(user_id: current_user.id)
    end
    
    
    
    
end
