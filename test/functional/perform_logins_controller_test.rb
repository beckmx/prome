require 'test_helper'

class PerformLoginsControllerTest < ActionController::TestCase
  setup do
    @perform_login = perform_logins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perform_logins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perform_login" do
    assert_difference('PerformLogin.count') do
      post :create, perform_login: { isactive: @perform_login.isactive, loginCode: @perform_login.loginCode, phone: @perform_login.phone }
    end

    assert_redirected_to perform_login_path(assigns(:perform_login))
  end

  test "should show perform_login" do
    get :show, id: @perform_login
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @perform_login
    assert_response :success
  end

  test "should update perform_login" do
    put :update, id: @perform_login, perform_login: { isactive: @perform_login.isactive, loginCode: @perform_login.loginCode, phone: @perform_login.phone }
    assert_redirected_to perform_login_path(assigns(:perform_login))
  end

  test "should destroy perform_login" do
    assert_difference('PerformLogin.count', -1) do
      delete :destroy, id: @perform_login
    end

    assert_redirected_to perform_logins_path
  end
end
