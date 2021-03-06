class CarRentalsController < ApplicationController
  before_action :set_car_rental, only: [:show, :edit, :update, :destroy]

  # GET /car_rentals
  # GET /car_rentals.json
  def index
    @car_rentals = CarRental.all
  end

  # GET /car_rentals/1
  # GET /car_rentals/1.json
  def show
  end

  # GET /car_rentals/new
  def new
    @car_rental = CarRental.new
  end

  # GET /car_rentals/1/edit
  def edit
  end

  # POST /car_rentals
  # POST /car_rentals.json
  def create
    @car_rental = CarRental.new(car_rental_params)

    respond_to do |format|
      if @car_rental.save
        format.html { redirect_to @car_rental, notice: 'Car rental was successfully created.' }
        format.json { render :show, status: :created, location: @car_rental }
      else
        format.html { render :new }
        format.json { render json: @car_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_rentals/1
  # PATCH/PUT /car_rentals/1.json
  def update
    respond_to do |format|
      if @car_rental.update(car_rental_params)
        format.html { redirect_to @car_rental, notice: 'Car rental was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_rental }
      else
        format.html { render :edit }
        format.json { render json: @car_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_rentals/1
  # DELETE /car_rentals/1.json
  def destroy
    @car_rental.destroy
    respond_to do |format|
      format.html { redirect_to car_rentals_url, notice: 'Car rental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_rental
      @car_rental = CarRental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_rental_params
      params.require(:car_rental).permit(:email_address, :itinerary_reference, :reference_term, :name, :confirmation_number, :item_name, :start_date_time, :end_date_time, :city, :state, :country, :street_address, :zip_code, :lat, :long, :context, :reference, :start_date_two, :end_date_two, :context_two, :reference_two)
    end
end
