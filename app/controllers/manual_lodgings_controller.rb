class ManualLodgingsController < ApplicationController
  before_action :set_manual_lodging, only: [:show, :edit, :update, :destroy]

  # GET /manual_lodgings
  # GET /manual_lodgings.json
  def index
    @manual_lodgings = ManualLodging.all
  end

  # GET /manual_lodgings/1
  # GET /manual_lodgings/1.json
  def show
  end

  # GET /manual_lodgings/new
  def new
    @manual_lodging = ManualLodging.new
  end

  # GET /manual_lodgings/1/edit
  def edit
  end

  # POST /manual_lodgings
  # POST /manual_lodgings.json
  def create
    @manual_lodging = ManualLodging.new(manual_lodging_params)

    respond_to do |format|
      if @manual_lodging.save
        format.html { redirect_to @manual_lodging, notice: 'Manual lodging was successfully created.' }
        format.json { render :show, status: :created, location: @manual_lodging }
      else
        format.html { render :new }
        format.json { render json: @manual_lodging.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manual_lodgings/1
  # PATCH/PUT /manual_lodgings/1.json
  def update
    respond_to do |format|
      if @manual_lodging.update(manual_lodging_params)
        format.html { redirect_to @manual_lodging, notice: 'Manual lodging was successfully updated.' }
        format.json { render :show, status: :ok, location: @manual_lodging }
      else
        format.html { render :edit }
        format.json { render json: @manual_lodging.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manual_lodgings/1
  # DELETE /manual_lodgings/1.json
  def destroy
    @manual_lodging.destroy
    respond_to do |format|
      format.html { redirect_to manual_lodgings_url, notice: 'Manual lodging was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manual_lodging
      @manual_lodging = ManualLodging.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manual_lodging_params
      params.require(:manual_lodging).permit(:email_address, :itinerary_reference, :reference_term, :name, :confirmation_number, :item_name, :start_date_time, :end_date_time, :city, :state, :country, :street_address, :airport_code)
    end
end
