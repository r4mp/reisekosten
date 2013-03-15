require 'test_helper'

class ReisesControllerTest < ActionController::TestCase
  setup do
    @reise = reises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reise" do
    assert_difference('Reise.count') do
      post :create, reise: { abfahrtDatum: @reise.abfahrtDatum, abfahrtUhrzeit: @reise.abfahrtUhrzeit, ankunftDatum: @reise.ankunftDatum, ankunftUhrzeit: @reise.ankunftUhrzeit, betrag: @reise.betrag, grund: @reise.grund, kilometer: @reise.kilometer, privatPkw: @reise.privatPkw, uebernachtungInklFruehstueck: @reise.uebernachtungInklFruehstueck, uebernachtungskosten: @reise.uebernachtungskosten, weitereFahrtkosten: @reise.weitereFahrtkosten }
    end

    assert_redirected_to reise_path(assigns(:reise))
  end

  test "should show reise" do
    get :show, id: @reise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reise
    assert_response :success
  end

  test "should update reise" do
    put :update, id: @reise, reise: { abfahrtDatum: @reise.abfahrtDatum, abfahrtUhrzeit: @reise.abfahrtUhrzeit, ankunftDatum: @reise.ankunftDatum, ankunftUhrzeit: @reise.ankunftUhrzeit, betrag: @reise.betrag, grund: @reise.grund, kilometer: @reise.kilometer, privatPkw: @reise.privatPkw, uebernachtungInklFruehstueck: @reise.uebernachtungInklFruehstueck, uebernachtungskosten: @reise.uebernachtungskosten, weitereFahrtkosten: @reise.weitereFahrtkosten }
    assert_redirected_to reise_path(assigns(:reise))
  end

  test "should destroy reise" do
    assert_difference('Reise.count', -1) do
      delete :destroy, id: @reise
    end

    assert_redirected_to reises_path
  end
end
