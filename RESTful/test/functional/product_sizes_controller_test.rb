require 'test_helper'

class ProductSizesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_sizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_size" do
    assert_difference('ProductSize.count') do
      post :create, :product_size => { }
    end

    assert_redirected_to product_size_path(assigns(:product_size))
  end

  test "should show product_size" do
    get :show, :id => product_sizes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => product_sizes(:one).to_param
    assert_response :success
  end

  test "should update product_size" do
    put :update, :id => product_sizes(:one).to_param, :product_size => { }
    assert_redirected_to product_size_path(assigns(:product_size))
  end

  test "should destroy product_size" do
    assert_difference('ProductSize.count', -1) do
      delete :destroy, :id => product_sizes(:one).to_param
    end

    assert_redirected_to product_sizes_path
  end
end
