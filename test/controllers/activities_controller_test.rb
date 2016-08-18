require 'test_helper'

class ActivitiesControllerTest < ActionController::TestCase
  setup do
    @activity = activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity" do
    assert_difference('Activity.count') do
      post :create, activity: { city: @activity.city, confirmation_number: @activity.confirmation_number, country: @activity.country, email_address: @activity.email_address, end_date_time: @activity.end_date_time, item_name: @activity.item_name, itinerary_reference: @activity.itinerary_reference, name: @activity.name, reference_term: @activity.reference_term, start_date_time: @activity.start_date_time, state: @activity.state, street_address: @activity.street_address, zip_code: @activity.zip_code }
    end

    assert_redirected_to activity_path(assigns(:activity))
  end

  test "should show activity" do
    get :show, id: @activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activity
    assert_response :success
  end

  test "should update activity" do
    patch :update, id: @activity, activity: { city: @activity.city, confirmation_number: @activity.confirmation_number, country: @activity.country, email_address: @activity.email_address, end_date_time: @activity.end_date_time, item_name: @activity.item_name, itinerary_reference: @activity.itinerary_reference, name: @activity.name, reference_term: @activity.reference_term, start_date_time: @activity.start_date_time, state: @activity.state, street_address: @activity.street_address, zip_code: @activity.zip_code }
    assert_redirected_to activity_path(assigns(:activity))
  end

  test "should destroy activity" do
    assert_difference('Activity.count', -1) do
      delete :destroy, id: @activity
    end

    assert_redirected_to activities_path
  end
end
