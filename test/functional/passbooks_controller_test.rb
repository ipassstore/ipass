require 'test_helper'

class PassbooksControllerTest < ActionController::TestCase
  setup do
    @passbook = passbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:passbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create passbook" do
    assert_difference('Passbook.count') do
      post :create, passbook: {  }
    end

    assert_redirected_to passbook_path(assigns(:passbook))
  end

  test "should show passbook" do
    get :show, id: @passbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @passbook
    assert_response :success
  end

  test "should update passbook" do
    put :update, id: @passbook, passbook: {  }
    assert_redirected_to passbook_path(assigns(:passbook))
  end

  test "should destroy passbook" do
    assert_difference('Passbook.count', -1) do
      delete :destroy, id: @passbook
    end

    assert_redirected_to passbooks_path
  end
end
