class GroundTransportationsController < ApplicationController
  before_action :set_ground_transportation, only: [:show, :edit, :update, :destroy]

  # GET /ground_transportations
  # GET /ground_transportations.json
  def index
    @ground_transportations = GroundTransportation.all
  end

  # GET /ground_transportations/1
  # GET /ground_transportations/1.json
  def show
  end

  # GET /ground_transportations/new
  def new
    @ground_transportation = GroundTransportation.new
  end

  # GET /ground_transportations/1/edit
  def edit
  end

  # POST /ground_transportations
  # POST /ground_transportations.json
  def create
    @ground_transportation = GroundTransportation.new(ground_transportation_params)

    respond_to do |format|
      if @ground_transportation.save
        format.html { redirect_to @ground_transportation, notice: 'Ground transportation was successfully created.' }
        format.json { render :show, status: :created, location: @ground_transportation }
      else
        format.html { render :new }
        format.json { render json: @ground_transportation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ground_transportations/1
  # PATCH/PUT /ground_transportations/1.json
  def update
    respond_to do |format|
      if @ground_transportation.update(ground_transportation_params)
        format.html { redirect_to @ground_transportation, notice: 'Ground transportation was successfully updated.' }
        format.json { render :show, status: :ok, location: @ground_transportation }
      else
        format.html { render :edit }
        format.json { render json: @ground_transportation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ground_transportations/1
  # DELETE /ground_transportations/1.json
  def destroy
    @ground_transportation.destroy
    respond_to do |format|
      format.html { redirect_to ground_transportations_url, notice: 'Ground transportation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ground_transportation
      @ground_transportation = GroundTransportation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ground_transportation_params
      params.require(:ground_transportation).permit(:email_address, :itinerary_reference, :reference_term, :name, :confirmation_number, :item_name, :start_date_time, :end_date_time, :city, :state, :country, :street_address, :zip_code, :lat, :long)
    end
end
