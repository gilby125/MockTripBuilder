class PostsController < ApplicationController


  # GET /posts
  # GET /posts.json
  def index

  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create

  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update

  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params

    end
end
