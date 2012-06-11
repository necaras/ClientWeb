require 'test_helper'

class ClientcategoriesControllerTest < ActionController::TestCase
  setup do
    @clientcategory = clientcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clientcategory" do
    assert_difference('Clientcategory.count') do
      post :create, clientcategory: @clientcategory.attributes
    end

    assert_redirected_to clientcategory_path(assigns(:clientcategory))
  end

  test "should show clientcategory" do
    get :show, id: @clientcategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clientcategory
    assert_response :success
  end

  test "should update clientcategory" do
    put :update, id: @clientcategory, clientcategory: @clientcategory.attributes
    assert_redirected_to clientcategory_path(assigns(:clientcategory))
  end

  test "should destroy clientcategory" do
    assert_difference('Clientcategory.count', -1) do
      delete :destroy, id: @clientcategory
    end

    assert_redirected_to clientcategories_path
  end
end
