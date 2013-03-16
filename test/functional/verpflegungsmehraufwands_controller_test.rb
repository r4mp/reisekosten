require 'test_helper'

class VerpflegungsmehraufwandsControllerTest < ActionController::TestCase
  setup do
    @verpflegungsmehraufwand = verpflegungsmehraufwands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:verpflegungsmehraufwands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create verpflegungsmehraufwand" do
    assert_difference('Verpflegungsmehraufwand.count') do
      post :create, verpflegungsmehraufwand: { datum: @verpflegungsmehraufwand.datum, ersparnis: @verpflegungsmehraufwand.ersparnis, maxBetrag: @verpflegungsmehraufwand.maxBetrag, nachweis: @verpflegungsmehraufwand.nachweis, nachweisBetrag: @verpflegungsmehraufwand.nachweisBetrag, pauschale: @verpflegungsmehraufwand.pauschale, reise_id: @verpflegungsmehraufwand.reise_id, stunden: @verpflegungsmehraufwand.stunden }
    end

    assert_redirected_to verpflegungsmehraufwand_path(assigns(:verpflegungsmehraufwand))
  end

  test "should show verpflegungsmehraufwand" do
    get :show, id: @verpflegungsmehraufwand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @verpflegungsmehraufwand
    assert_response :success
  end

  test "should update verpflegungsmehraufwand" do
    put :update, id: @verpflegungsmehraufwand, verpflegungsmehraufwand: { datum: @verpflegungsmehraufwand.datum, ersparnis: @verpflegungsmehraufwand.ersparnis, maxBetrag: @verpflegungsmehraufwand.maxBetrag, nachweis: @verpflegungsmehraufwand.nachweis, nachweisBetrag: @verpflegungsmehraufwand.nachweisBetrag, pauschale: @verpflegungsmehraufwand.pauschale, reise_id: @verpflegungsmehraufwand.reise_id, stunden: @verpflegungsmehraufwand.stunden }
    assert_redirected_to verpflegungsmehraufwand_path(assigns(:verpflegungsmehraufwand))
  end

  test "should destroy verpflegungsmehraufwand" do
    assert_difference('Verpflegungsmehraufwand.count', -1) do
      delete :destroy, id: @verpflegungsmehraufwand
    end

    assert_redirected_to verpflegungsmehraufwands_path
  end
end
