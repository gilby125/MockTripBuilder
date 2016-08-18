require 'test_helper'

class CarRentalsControllerTest < ActionController::TestCase
  setup do
    @car_rental = car_rentals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_rentals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_rental" do
    assert_difference('CarRental.count') do
      post :create, car_rental: { city: @car_rental.city, confirmation_number: @car_rental.confirmation_number, context: @car_rental.context, context_two: @car_rental.context_two, country: @car_rental.country, email_address: @car_rental.email_address, end_date_time: @car_rental.end_date_time, end_date_two: @car_rental.end_date_two, item_name: @car_rental.item_name, itinerary_reference: @car_rental.itinerary_reference, lat: @car_rental.lat, long: @car_rental.long, name: @car_rental.name, reference: @car_rental.reference, reference_term: @car_rental.reference_term, reference_two: @car_rental.reference_two, start_date_time: @car_rental.start_date_time, start_date_two: @car_rental.start_date_two, state: @car_rental.state, street_address: @car_rental.street_address, zip_code: @car_rental.zip_code }
    end

    assert_redirected_to car_rental_path(assigns(:car_rental))
  end

  test "should show car_rental" do
    get :show, id: @car_rental
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_rental
    assert_response :success
  end

  test "should update car_rental" do
    patch :update, id: @car_rental, car_rental: { city: @car_rental.city, confirmation_number: @car_rental.confirmation_number, context: @car_rental.context, context_two: @car_rental.context_two, country: @car_rental.country, email_address: @car_rental.email_address, end_date_time: @car_rental.end_date_time, end_date_two: @car_rental.end_date_two, item_name: @car_rental.item_name, itinerary_reference: @car_rental.itinerary_reference, lat: @car_rental.lat, long: @car_rental.long, name: @car_rental.name, reference: @car_rental.reference, reference_term: @car_rental.reference_term, reference_two: @car_rental.reference_two, start_date_time: @car_rental.start_date_time, start_date_two: @car_rental.start_date_two, state: @car_rental.state, street_address: @car_rental.street_address, zip_code: @car_rental.zip_code }
    assert_redirected_to car_rental_path(assigns(:car_rental))
  end

  test "should destroy car_rental" do
    assert_difference('CarRental.count', -1) do
      delete :destroy, id: @car_rental
    end

    assert_redirected_to car_rentals_path
  end
end
