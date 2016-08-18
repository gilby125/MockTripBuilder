class FoodDrinksController < ApplicationController
  before_action :set_food_drink, only: [:show, :edit, :update, :destroy]

  # GET /food_drinks
  # GET /food_drinks.json
  def index
    @food_drinks = FoodDrink.all
  end

  # GET /food_drinks/1
  # GET /food_drinks/1.json
  def show
  end

  # GET /food_drinks/new
  def new
    @food_drink = FoodDrink.new
  end

  # GET /food_drinks/1/edit
  def edit
  end

  # POST /food_drinks
  # POST /food_drinks.json
  def create
    @food_drink = FoodDrink.new(food_drink_params)

    respond_to do |format|
      if @food_drink.save
        format.html { redirect_to @food_drink, notice: 'Food drink was successfully created.' }
        format.json { render :show, status: :created, location: @food_drink }
      else
        format.html { render :new }
        format.json { render json: @food_drink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_drinks/1
  # PATCH/PUT /food_drinks/1.json
  def update
    respond_to do |format|
      if @food_drink.update(food_drink_params)
        format.html { redirect_to @food_drink, notice: 'Food drink was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_drink }
      else
        format.html { render :edit }
        format.json { render json: @food_drink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_drinks/1
  # DELETE /food_drinks/1.json
  def destroy
    @food_drink.destroy
    respond_to do |format|
      format.html { redirect_to food_drinks_url, notice: 'Food drink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_drink
      @food_drink = FoodDrink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_drink_params
      params.require(:food_drink).permit(:email_address, :itinerary_reference, :reference_term, :name, :confirmation_number, :item_name, :start_date_time, :end_date_time, :city, :state, :country, :street_address, :zip_code)
    end
end
