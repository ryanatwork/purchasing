require 'test_helper'

class BidtypesControllerTest < ActionController::TestCase
  setup do
    @bidtype = bidtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bidtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bidtype" do
    assert_difference('Bidtype.count') do
      post :create, :bidtype => @bidtype.attributes
    end

    assert_redirected_to bidtype_path(assigns(:bidtype))
  end

  test "should show bidtype" do
    get :show, :id => @bidtype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bidtype.to_param
    assert_response :success
  end

  test "should update bidtype" do
    put :update, :id => @bidtype.to_param, :bidtype => @bidtype.attributes
    assert_redirected_to bidtype_path(assigns(:bidtype))
  end

  test "should destroy bidtype" do
    assert_difference('Bidtype.count', -1) do
      delete :destroy, :id => @bidtype.to_param
    end

    assert_redirected_to bidtypes_path
  end
end
