require 'test_helper'

class FoodDrinksControllerTest < ActionController::TestCase
  setup do
    @food_drink = food_drinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_drinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_drink" do
    assert_difference('FoodDrink.count') do
      post :create, food_drink: { city: @food_drink.city, confirmation_number: @food_drink.confirmation_number, country: @food_drink.country, email_address: @food_drink.email_address, end_date_time: @food_drink.end_date_time, item_name: @food_drink.item_name, itinerary_reference: @food_drink.itinerary_reference, name: @food_drink.name, reference_term: @food_drink.reference_term, start_date_time: @food_drink.start_date_time, state: @food_drink.state, street_address: @food_drink.street_address, zip_code: @food_drink.zip_code }
    end

    assert_redirected_to food_drink_path(assigns(:food_drink))
  end

  test "should show food_drink" do
    get :show, id: @food_drink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_drink
    assert_response :success
  end

  test "should update food_drink" do
    patch :update, id: @food_drink, food_drink: { city: @food_drink.city, confirmation_number: @food_drink.confirmation_number, country: @food_drink.country, email_address: @food_drink.email_address, end_date_time: @food_drink.end_date_time, item_name: @food_drink.item_name, itinerary_reference: @food_drink.itinerary_reference, name: @food_drink.name, reference_term: @food_drink.reference_term, start_date_time: @food_drink.start_date_time, state: @food_drink.state, street_address: @food_drink.street_address, zip_code: @food_drink.zip_code }
    assert_redirected_to food_drink_path(assigns(:food_drink))
  end

  test "should destroy food_drink" do
    assert_difference('FoodDrink.count', -1) do
      delete :destroy, id: @food_drink
    end

    assert_redirected_to food_drinks_path
  end
end
