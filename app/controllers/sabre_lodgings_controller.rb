class SabreLodgingsController < ApplicationController
  before_action :set_sabre_lodging, only: [:show, :edit, :update, :destroy]

  # GET /sabre_lodgings
  # GET /sabre_lodgings.json
  def index
    @sabre_lodgings = SabreLodging.all
  end

  # GET /sabre_lodgings/1
  # GET /sabre_lodgings/1.json
  def show
  end

  # GET /sabre_lodgings/new
  def new
    @sabre_lodging = SabreLodging.new
  end

  # GET /sabre_lodgings/1/edit
  def edit
  end

  # POST /sabre_lodgings
  # POST /sabre_lodgings.json
  def create
    @sabre_lodging = SabreLodging.new(sabre_lodging_params)

    respond_to do |format|
      if @sabre_lodging.save
        format.html { redirect_to @sabre_lodging, notice: 'Sabre lodging was successfully created.' }
        format.json { render :show, status: :created, location: @sabre_lodging }
      else
        format.html { render :new }
        format.json { render json: @sabre_lodging.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sabre_lodgings/1
  # PATCH/PUT /sabre_lodgings/1.json
  def update
    respond_to do |format|
      if @sabre_lodging.update(sabre_lodging_params)
        format.html { redirect_to @sabre_lodging, notice: 'Sabre lodging was successfully updated.' }
        format.json { render :show, status: :ok, location: @sabre_lodging }
      else
        format.html { render :edit }
        format.json { render json: @sabre_lodging.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sabre_lodgings/1
  # DELETE /sabre_lodgings/1.json
  def destroy
    @sabre_lodging.destroy
    respond_to do |format|
      format.html { redirect_to sabre_lodgings_url, notice: 'Sabre lodging was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sabre_lodging
      @sabre_lodging = SabreLodging.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sabre_lodging_params
      params.require(:sabre_lodging).permit(:email_address, :itinerary_reference, :reference_term, :name, :confirmation_number, :item_name, :start_date_time, :end_date_time, :city, :state, :country, :street_address, :airport_code)
    end
end
