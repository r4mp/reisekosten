require 'test_helper'

class PauschaleTypsControllerTest < ActionController::TestCase
  setup do
    @pauschale_typ = pauschale_typs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pauschale_typs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pauschale_typ" do
    assert_difference('PauschaleTyp.count') do
      post :create, pauschale_typ: { beschreibung: @pauschale_typ.beschreibung, typ: @pauschale_typ.typ }
    end

    assert_redirected_to pauschale_typ_path(assigns(:pauschale_typ))
  end

  test "should show pauschale_typ" do
    get :show, id: @pauschale_typ
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pauschale_typ
    assert_response :success
  end

  test "should update pauschale_typ" do
    put :update, id: @pauschale_typ, pauschale_typ: { beschreibung: @pauschale_typ.beschreibung, typ: @pauschale_typ.typ }
    assert_redirected_to pauschale_typ_path(assigns(:pauschale_typ))
  end

  test "should destroy pauschale_typ" do
    assert_difference('PauschaleTyp.count', -1) do
      delete :destroy, id: @pauschale_typ
    end

    assert_redirected_to pauschale_typs_path
  end
end
