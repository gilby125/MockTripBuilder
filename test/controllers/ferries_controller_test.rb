require 'test_helper'

class FerriesControllerTest < ActionController::TestCase
  setup do
    @ferry = ferries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ferries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ferry" do
    assert_difference('Ferry.count') do
      post :create, ferry: { city: @ferry.city, confirmation_number: @ferry.confirmation_number, country: @ferry.country, email_address: @ferry.email_address, end_date_time: @ferry.end_date_time, item_name: @ferry.item_name, itinerary_reference: @ferry.itinerary_reference, lat: @ferry.lat, long: @ferry.long, name: @ferry.name, reference_term: @ferry.reference_term, start_date_time: @ferry.start_date_time, state: @ferry.state, street_address: @ferry.street_address, zip_code: @ferry.zip_code }
    end

    assert_redirected_to ferry_path(assigns(:ferry))
  end

  test "should show ferry" do
    get :show, id: @ferry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ferry
    assert_response :success
  end

  test "should update ferry" do
    patch :update, id: @ferry, ferry: { city: @ferry.city, confirmation_number: @ferry.confirmation_number, country: @ferry.country, email_address: @ferry.email_address, end_date_time: @ferry.end_date_time, item_name: @ferry.item_name, itinerary_reference: @ferry.itinerary_reference, lat: @ferry.lat, long: @ferry.long, name: @ferry.name, reference_term: @ferry.reference_term, start_date_time: @ferry.start_date_time, state: @ferry.state, street_address: @ferry.street_address, zip_code: @ferry.zip_code }
    assert_redirected_to ferry_path(assigns(:ferry))
  end

  test "should destroy ferry" do
    assert_difference('Ferry.count', -1) do
      delete :destroy, id: @ferry
    end

    assert_redirected_to ferries_path
  end
end
