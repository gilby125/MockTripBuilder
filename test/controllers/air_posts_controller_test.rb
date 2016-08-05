require 'test_helper'

class AirPostsControllerTest < ActionController::TestCase
  setup do
    @air_post = air_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:air_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create air_post" do
    assert_difference('AirPost.count') do
      post :create, air_post: {  }
    end

    assert_redirected_to air_post_path(assigns(:air_post))
  end

  test "should show air_post" do
    get :show, id: @air_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @air_post
    assert_response :success
  end

  test "should update air_post" do
    patch :update, id: @air_post, air_post: {  }
    assert_redirected_to air_post_path(assigns(:air_post))
  end

  test "should destroy air_post" do
    assert_difference('AirPost.count', -1) do
      delete :destroy, id: @air_post
    end

    assert_redirected_to air_posts_path
  end
end
