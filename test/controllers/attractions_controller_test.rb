require 'test_helper'

class AttractionsControllerTest < ActionController::TestCase
  setup do
    @attraction = attractions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attractions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attraction" do
    assert_difference('Attraction.count') do
      post :create, attraction: { city: @attraction.city, confirmation_number: @attraction.confirmation_number, country: @attraction.country, email_address: @attraction.email_address, end_date_time: @attraction.end_date_time, item_name: @attraction.item_name, itinerary_reference: @attraction.itinerary_reference, name: @attraction.name, reference_term: @attraction.reference_term, start_date_time: @attraction.start_date_time, state: @attraction.state, street_address: @attraction.street_address, zip_code: @attraction.zip_code }
    end

    assert_redirected_to attraction_path(assigns(:attraction))
  end

  test "should show attraction" do
    get :show, id: @attraction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attraction
    assert_response :success
  end

  test "should update attraction" do
    patch :update, id: @attraction, attraction: { city: @attraction.city, confirmation_number: @attraction.confirmation_number, country: @attraction.country, email_address: @attraction.email_address, end_date_time: @attraction.end_date_time, item_name: @attraction.item_name, itinerary_reference: @attraction.itinerary_reference, name: @attraction.name, reference_term: @attraction.reference_term, start_date_time: @attraction.start_date_time, state: @attraction.state, street_address: @attraction.street_address, zip_code: @attraction.zip_code }
    assert_redirected_to attraction_path(assigns(:attraction))
  end

  test "should destroy attraction" do
    assert_difference('Attraction.count', -1) do
      delete :destroy, id: @attraction
    end

    assert_redirected_to attractions_path
  end
end
