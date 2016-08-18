require 'test_helper'

class SabreLodgingsControllerTest < ActionController::TestCase
  setup do
    @sabre_lodging = sabre_lodgings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sabre_lodgings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sabre_lodging" do
    assert_difference('SabreLodging.count') do
      post :create, sabre_lodging: { airport_code: @sabre_lodging.airport_code, city: @sabre_lodging.city, confirmation_number: @sabre_lodging.confirmation_number, country: @sabre_lodging.country, email_address: @sabre_lodging.email_address, end_date_time: @sabre_lodging.end_date_time, item_name: @sabre_lodging.item_name, itinerary_reference: @sabre_lodging.itinerary_reference, name: @sabre_lodging.name, reference_term: @sabre_lodging.reference_term, start_date_time: @sabre_lodging.start_date_time, state: @sabre_lodging.state, street_address: @sabre_lodging.street_address }
    end

    assert_redirected_to sabre_lodging_path(assigns(:sabre_lodging))
  end

  test "should show sabre_lodging" do
    get :show, id: @sabre_lodging
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sabre_lodging
    assert_response :success
  end

  test "should update sabre_lodging" do
    patch :update, id: @sabre_lodging, sabre_lodging: { airport_code: @sabre_lodging.airport_code, city: @sabre_lodging.city, confirmation_number: @sabre_lodging.confirmation_number, country: @sabre_lodging.country, email_address: @sabre_lodging.email_address, end_date_time: @sabre_lodging.end_date_time, item_name: @sabre_lodging.item_name, itinerary_reference: @sabre_lodging.itinerary_reference, name: @sabre_lodging.name, reference_term: @sabre_lodging.reference_term, start_date_time: @sabre_lodging.start_date_time, state: @sabre_lodging.state, street_address: @sabre_lodging.street_address }
    assert_redirected_to sabre_lodging_path(assigns(:sabre_lodging))
  end

  test "should destroy sabre_lodging" do
    assert_difference('SabreLodging.count', -1) do
      delete :destroy, id: @sabre_lodging
    end

    assert_redirected_to sabre_lodgings_path
  end
end
