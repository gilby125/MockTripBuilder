require 'test_helper'

class RailsControllerTest < ActionController::TestCase
  setup do
    @rail = rails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rail" do
    assert_difference('Rail.count') do
      post :create, rail: { city: @rail.city, confirmation_number: @rail.confirmation_number, context: @rail.context, context_two: @rail.context_two, country: @rail.country, email_address: @rail.email_address, end_date_time: @rail.end_date_time, end_date_two: @rail.end_date_two, item_name: @rail.item_name, itinerary_reference: @rail.itinerary_reference, lat: @rail.lat, long: @rail.long, name: @rail.name, reference: @rail.reference, reference_term: @rail.reference_term, reference_two: @rail.reference_two, start_date_time: @rail.start_date_time, start_date_two: @rail.start_date_two, state: @rail.state, street_address: @rail.street_address, zip_code: @rail.zip_code }
    end

    assert_redirected_to rail_path(assigns(:rail))
  end

  test "should show rail" do
    get :show, id: @rail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rail
    assert_response :success
  end

  test "should update rail" do
    patch :update, id: @rail, rail: { city: @rail.city, confirmation_number: @rail.confirmation_number, context: @rail.context, context_two: @rail.context_two, country: @rail.country, email_address: @rail.email_address, end_date_time: @rail.end_date_time, end_date_two: @rail.end_date_two, item_name: @rail.item_name, itinerary_reference: @rail.itinerary_reference, lat: @rail.lat, long: @rail.long, name: @rail.name, reference: @rail.reference, reference_term: @rail.reference_term, reference_two: @rail.reference_two, start_date_time: @rail.start_date_time, start_date_two: @rail.start_date_two, state: @rail.state, street_address: @rail.street_address, zip_code: @rail.zip_code }
    assert_redirected_to rail_path(assigns(:rail))
  end

  test "should destroy rail" do
    assert_difference('Rail.count', -1) do
      delete :destroy, id: @rail
    end

    assert_redirected_to rails_path
  end
end
