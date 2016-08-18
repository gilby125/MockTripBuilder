require 'test_helper'

class ManualLodgingsControllerTest < ActionController::TestCase
  setup do
    @manual_lodging = manual_lodgings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manual_lodgings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manual_lodging" do
    assert_difference('ManualLodging.count') do
      post :create, manual_lodging: { airport_code: @manual_lodging.airport_code, city: @manual_lodging.city, confirmation_number: @manual_lodging.confirmation_number, country: @manual_lodging.country, email_address: @manual_lodging.email_address, end_date_time: @manual_lodging.end_date_time, item_name: @manual_lodging.item_name, itinerary_reference: @manual_lodging.itinerary_reference, name: @manual_lodging.name, reference_term: @manual_lodging.reference_term, start_date_time: @manual_lodging.start_date_time, state: @manual_lodging.state, street_address: @manual_lodging.street_address }
    end

    assert_redirected_to manual_lodging_path(assigns(:manual_lodging))
  end

  test "should show manual_lodging" do
    get :show, id: @manual_lodging
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manual_lodging
    assert_response :success
  end

  test "should update manual_lodging" do
    patch :update, id: @manual_lodging, manual_lodging: { airport_code: @manual_lodging.airport_code, city: @manual_lodging.city, confirmation_number: @manual_lodging.confirmation_number, country: @manual_lodging.country, email_address: @manual_lodging.email_address, end_date_time: @manual_lodging.end_date_time, item_name: @manual_lodging.item_name, itinerary_reference: @manual_lodging.itinerary_reference, name: @manual_lodging.name, reference_term: @manual_lodging.reference_term, start_date_time: @manual_lodging.start_date_time, state: @manual_lodging.state, street_address: @manual_lodging.street_address }
    assert_redirected_to manual_lodging_path(assigns(:manual_lodging))
  end

  test "should destroy manual_lodging" do
    assert_difference('ManualLodging.count', -1) do
      delete :destroy, id: @manual_lodging
    end

    assert_redirected_to manual_lodgings_path
  end
end
