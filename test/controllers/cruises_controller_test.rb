require 'test_helper'

class CruisesControllerTest < ActionController::TestCase
  setup do
    @cruise = cruises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cruises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cruise" do
    assert_difference('Cruise.count') do
      post :create, cruise: { city: @cruise.city, confirmation_number: @cruise.confirmation_number, country: @cruise.country, email_address: @cruise.email_address, end_date_time: @cruise.end_date_time, item_name: @cruise.item_name, itinerary_reference: @cruise.itinerary_reference, lat: @cruise.lat, long: @cruise.long, name: @cruise.name, reference_term: @cruise.reference_term, start_date_time: @cruise.start_date_time, state: @cruise.state, street_address: @cruise.street_address, zip_code: @cruise.zip_code }
    end

    assert_redirected_to cruise_path(assigns(:cruise))
  end

  test "should show cruise" do
    get :show, id: @cruise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cruise
    assert_response :success
  end

  test "should update cruise" do
    patch :update, id: @cruise, cruise: { city: @cruise.city, confirmation_number: @cruise.confirmation_number, country: @cruise.country, email_address: @cruise.email_address, end_date_time: @cruise.end_date_time, item_name: @cruise.item_name, itinerary_reference: @cruise.itinerary_reference, lat: @cruise.lat, long: @cruise.long, name: @cruise.name, reference_term: @cruise.reference_term, start_date_time: @cruise.start_date_time, state: @cruise.state, street_address: @cruise.street_address, zip_code: @cruise.zip_code }
    assert_redirected_to cruise_path(assigns(:cruise))
  end

  test "should destroy cruise" do
    assert_difference('Cruise.count', -1) do
      delete :destroy, id: @cruise
    end

    assert_redirected_to cruises_path
  end
end
