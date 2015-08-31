require 'test_helper'

class TiteksControllerTest < ActionController::TestCase
  setup do
    @titek = titeks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:titeks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create titek" do
    assert_difference('Titek.count') do
      post :create, titek: {  }
    end

    assert_redirected_to titek_path(assigns(:titek))
  end

  test "should show titek" do
    get :show, id: @titek
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @titek
    assert_response :success
  end

  test "should update titek" do
    patch :update, id: @titek, titek: {  }
    assert_redirected_to titek_path(assigns(:titek))
  end

  test "should destroy titek" do
    assert_difference('Titek.count', -1) do
      delete :destroy, id: @titek
    end

    assert_redirected_to titeks_path
  end
end
