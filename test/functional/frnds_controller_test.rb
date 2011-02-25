require 'test_helper'

class FrndsControllerTest < ActionController::TestCase
  setup do
    @frnd = frnds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frnds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frnd" do
    assert_difference('Frnd.count') do
      post :create, :frnd => @frnd.attributes
    end

    assert_redirected_to frnd_path(assigns(:frnd))
  end

  test "should show frnd" do
    get :show, :id => @frnd.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @frnd.to_param
    assert_response :success
  end

  test "should update frnd" do
    put :update, :id => @frnd.to_param, :frnd => @frnd.attributes
    assert_redirected_to frnd_path(assigns(:frnd))
  end

  test "should destroy frnd" do
    assert_difference('Frnd.count', -1) do
      delete :destroy, :id => @frnd.to_param
    end

    assert_redirected_to frnds_path
  end
end
