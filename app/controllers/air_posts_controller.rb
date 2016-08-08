class AirPostsController < ApplicationController
  before_action :set_air_post, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with :name => "tripcase_dev", :password => "blue2016" 

  # GET /air_posts
  # GET /air_posts.json
  def index
    @air_posts = AirPost.order('created_at DESC').all.paginate(page: params[:page], per_page: 10)
  end

  # GET /air_posts/1
  # GET /air_posts/1.json
  def show
  end

  # GET /air_posts/new
  def new
    @air_post = AirPost.new
  end

  # GET /air_posts/1/edit
  def edit
  end

  # POST /air_posts
  # POST /air_posts.json
  def create
    @air_post = AirPost.new(air_post_params)

    respond_to do |format|
      if @air_post.save
        format.html { redirect_to @air_post, notice: 'Air post was successfully created.' }
        format.json { render :show, status: :created, location: @air_post }
      else
        format.html { render :new }
        format.json { render json: @air_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /air_posts/1
  # PATCH/PUT /air_posts/1.json
  def update
    respond_to do |format|
      if @air_post.update(air_post_params)
        format.html { redirect_to @air_post, notice: 'Air post was successfully updated.' }
        format.json { render :show, status: :ok, location: @air_post }
      else
        format.html { render :edit }
        format.json { render json: @air_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /air_posts/1
  # DELETE /air_posts/1.json
  def destroy
    @air_post.destroy
    respond_to do |format|
      format.html { redirect_to air_posts_url, notice: 'Air post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_air_post
      @air_post = AirPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def air_post_params
      params[:air_post].permit(:email_address, :itinerary_reference, :name, :airline_code, :confirmation_number, :flight_number, :arrival_date_time, :departure_date_time, :departure_airport, :arrival_airport, :gt_site_name, :gt_sub_site_name)
    end
end
