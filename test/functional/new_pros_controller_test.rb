require 'test_helper'

class NewProsControllerTest < ActionController::TestCase
  setup do
    @new_pro = new_pros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_pros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_pro" do
    assert_difference('NewPro.count') do
      post :create, new_pro: { country: @new_pro.country, lastName: @new_pro.lastName, name: @new_pro.name, phoneNumber: @new_pro.phoneNumber }
    end

    assert_redirected_to new_pro_path(assigns(:new_pro))
  end

  test "should show new_pro" do
    get :show, id: @new_pro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_pro
    assert_response :success
  end

  test "should update new_pro" do
    put :update, id: @new_pro, new_pro: { country: @new_pro.country, lastName: @new_pro.lastName, name: @new_pro.name, phoneNumber: @new_pro.phoneNumber }
    assert_redirected_to new_pro_path(assigns(:new_pro))
  end

  test "should destroy new_pro" do
    assert_difference('NewPro.count', -1) do
      delete :destroy, id: @new_pro
    end

    assert_redirected_to new_pros_path
  end
end
