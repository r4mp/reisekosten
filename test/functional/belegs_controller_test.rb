require 'test_helper'

class BelegsControllerTest < ActionController::TestCase
  setup do
    @beleg = belegs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:belegs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beleg" do
    assert_difference('Beleg.count') do
      post :create, beleg: {  }
    end

    assert_redirected_to beleg_path(assigns(:beleg))
  end

  test "should show beleg" do
    get :show, id: @beleg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beleg
    assert_response :success
  end

  test "should update beleg" do
    put :update, id: @beleg, beleg: {  }
    assert_redirected_to beleg_path(assigns(:beleg))
  end

  test "should destroy beleg" do
    assert_difference('Beleg.count', -1) do
      delete :destroy, id: @beleg
    end

    assert_redirected_to belegs_path
  end
end
