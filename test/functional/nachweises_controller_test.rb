require 'test_helper'

class NachweisesControllerTest < ActionController::TestCase
  setup do
    @nachweise = nachweises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nachweises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nachweise" do
    assert_difference('Nachweise.count') do
      post :create, nachweise: { betrag: @nachweise.betrag, verpflegungsmehraufwand_id: @nachweise.verpflegungsmehraufwand_id }
    end

    assert_redirected_to nachweise_path(assigns(:nachweise))
  end

  test "should show nachweise" do
    get :show, id: @nachweise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nachweise
    assert_response :success
  end

  test "should update nachweise" do
    put :update, id: @nachweise, nachweise: { betrag: @nachweise.betrag, verpflegungsmehraufwand_id: @nachweise.verpflegungsmehraufwand_id }
    assert_redirected_to nachweise_path(assigns(:nachweise))
  end

  test "should destroy nachweise" do
    assert_difference('Nachweise.count', -1) do
      delete :destroy, id: @nachweise
    end

    assert_redirected_to nachweises_path
  end
end
