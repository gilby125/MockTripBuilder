require 'test_helper'

class MeetingsControllerTest < ActionController::TestCase
  setup do
    @meeting = meetings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meetings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meeting" do
    assert_difference('Meeting.count') do
      post :create, meeting: { city: @meeting.city, confirmation_number: @meeting.confirmation_number, country: @meeting.country, email_address: @meeting.email_address, end_date_time: @meeting.end_date_time, item_name: @meeting.item_name, itinerary_reference: @meeting.itinerary_reference, name: @meeting.name, reference_term: @meeting.reference_term, start_date_time: @meeting.start_date_time, state: @meeting.state, street_address: @meeting.street_address, zip_code: @meeting.zip_code }
    end

    assert_redirected_to meeting_path(assigns(:meeting))
  end

  test "should show meeting" do
    get :show, id: @meeting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meeting
    assert_response :success
  end

  test "should update meeting" do
    patch :update, id: @meeting, meeting: { city: @meeting.city, confirmation_number: @meeting.confirmation_number, country: @meeting.country, email_address: @meeting.email_address, end_date_time: @meeting.end_date_time, item_name: @meeting.item_name, itinerary_reference: @meeting.itinerary_reference, name: @meeting.name, reference_term: @meeting.reference_term, start_date_time: @meeting.start_date_time, state: @meeting.state, street_address: @meeting.street_address, zip_code: @meeting.zip_code }
    assert_redirected_to meeting_path(assigns(:meeting))
  end

  test "should destroy meeting" do
    assert_difference('Meeting.count', -1) do
      delete :destroy, id: @meeting
    end

    assert_redirected_to meetings_path
  end
end
