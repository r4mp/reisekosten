require 'test_helper'

class PauschalesControllerTest < ActionController::TestCase
  setup do
    @pauschale = pauschales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pauschales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pauschale" do
    assert_difference('Pauschale.count') do
      post :create, pauschale: { betrag: @pauschale.betrag, stunden: @pauschale.stunden }
    end

    assert_redirected_to pauschale_path(assigns(:pauschale))
  end

  test "should show pauschale" do
    get :show, id: @pauschale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pauschale
    assert_response :success
  end

  test "should update pauschale" do
    put :update, id: @pauschale, pauschale: { betrag: @pauschale.betrag, stunden: @pauschale.stunden }
    assert_redirected_to pauschale_path(assigns(:pauschale))
  end

  test "should destroy pauschale" do
    assert_difference('Pauschale.count', -1) do
      delete :destroy, id: @pauschale
    end

    assert_redirected_to pauschales_path
  end
end
