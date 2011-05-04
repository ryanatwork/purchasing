require 'test_helper'

class BidTypesControllerTest < ActionController::TestCase
  setup do
    @bid_type = bid_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bid_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bid_type" do
    assert_difference('BidType.count') do
      post :create, :bid_type => @bid_type.attributes
    end

    assert_redirected_to bid_type_path(assigns(:bid_type))
  end

  test "should show bid_type" do
    get :show, :id => @bid_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bid_type.to_param
    assert_response :success
  end

  test "should update bid_type" do
    put :update, :id => @bid_type.to_param, :bid_type => @bid_type.attributes
    assert_redirected_to bid_type_path(assigns(:bid_type))
  end

  test "should destroy bid_type" do
    assert_difference('BidType.count', -1) do
      delete :destroy, :id => @bid_type.to_param
    end

    assert_redirected_to bid_types_path
  end
end
