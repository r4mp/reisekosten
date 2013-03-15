require 'test_helper'

class VerpflegungsControllerTest < ActionController::TestCase
  setup do
    @verpflegung = verpflegungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:verpflegungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create verpflegung" do
    assert_difference('Verpflegung.count') do
      post :create, verpflegung: { datum: @verpflegung.datum }
    end

    assert_redirected_to verpflegung_path(assigns(:verpflegung))
  end

  test "should show verpflegung" do
    get :show, id: @verpflegung
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @verpflegung
    assert_response :success
  end

  test "should update verpflegung" do
    put :update, id: @verpflegung, verpflegung: { datum: @verpflegung.datum }
    assert_redirected_to verpflegung_path(assigns(:verpflegung))
  end

  test "should destroy verpflegung" do
    assert_difference('Verpflegung.count', -1) do
      delete :destroy, id: @verpflegung
    end

    assert_redirected_to verpflegungs_path
  end
end
