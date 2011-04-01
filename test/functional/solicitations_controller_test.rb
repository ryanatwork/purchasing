require 'test_helper'

class SolicitationsControllerTest < ActionController::TestCase
  setup do
    @solicitation = solicitations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicitations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitation" do
    assert_difference('Solicitation.count') do
      post :create, :solicitation => @solicitation.attributes
    end

    assert_redirected_to solicitation_path(assigns(:solicitation))
  end

  test "should show solicitation" do
    get :show, :id => @solicitation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @solicitation.to_param
    assert_response :success
  end

  test "should update solicitation" do
    put :update, :id => @solicitation.to_param, :solicitation => @solicitation.attributes
    assert_redirected_to solicitation_path(assigns(:solicitation))
  end

  test "should destroy solicitation" do
    assert_difference('Solicitation.count', -1) do
      delete :destroy, :id => @solicitation.to_param
    end

    assert_redirected_to solicitations_path
  end
end
