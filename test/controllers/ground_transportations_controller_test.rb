require 'test_helper'

class GroundTransportationsControllerTest < ActionController::TestCase
  setup do
    @ground_transportation = ground_transportations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ground_transportations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ground_transportation" do
    assert_difference('GroundTransportation.count') do
      post :create, ground_transportation: { city: @ground_transportation.city, confirmation_number: @ground_transportation.confirmation_number, country: @ground_transportation.country, email_address: @ground_transportation.email_address, end_date_time: @ground_transportation.end_date_time, item_name: @ground_transportation.item_name, itinerary_reference: @ground_transportation.itinerary_reference, lat: @ground_transportation.lat, long: @ground_transportation.long, name: @ground_transportation.name, reference_term: @ground_transportation.reference_term, start_date_time: @ground_transportation.start_date_time, state: @ground_transportation.state, street_address: @ground_transportation.street_address, zip_code: @ground_transportation.zip_code }
    end

    assert_redirected_to ground_transportation_path(assigns(:ground_transportation))
  end

  test "should show ground_transportation" do
    get :show, id: @ground_transportation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ground_transportation
    assert_response :success
  end

  test "should update ground_transportation" do
    patch :update, id: @ground_transportation, ground_transportation: { city: @ground_transportation.city, confirmation_number: @ground_transportation.confirmation_number, country: @ground_transportation.country, email_address: @ground_transportation.email_address, end_date_time: @ground_transportation.end_date_time, item_name: @ground_transportation.item_name, itinerary_reference: @ground_transportation.itinerary_reference, lat: @ground_transportation.lat, long: @ground_transportation.long, name: @ground_transportation.name, reference_term: @ground_transportation.reference_term, start_date_time: @ground_transportation.start_date_time, state: @ground_transportation.state, street_address: @ground_transportation.street_address, zip_code: @ground_transportation.zip_code }
    assert_redirected_to ground_transportation_path(assigns(:ground_transportation))
  end

  test "should destroy ground_transportation" do
    assert_difference('GroundTransportation.count', -1) do
      delete :destroy, id: @ground_transportation
    end

    assert_redirected_to ground_transportations_path
  end
end
