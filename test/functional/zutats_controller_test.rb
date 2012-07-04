require 'test_helper'

class ZutatsControllerTest < ActionController::TestCase
  setup do
    @zutat = zutats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zutats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zutat" do
    assert_difference('Zutat.count') do
      post :create, zutat: { rezept_id: @zutat.rezept_id, text: @zutat.text }
    end

    assert_redirected_to zutat_path(assigns(:zutat))
  end

  test "should show zutat" do
    get :show, id: @zutat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zutat
    assert_response :success
  end

  test "should update zutat" do
    put :update, id: @zutat, zutat: { rezept_id: @zutat.rezept_id, text: @zutat.text }
    assert_redirected_to zutat_path(assigns(:zutat))
  end

  test "should destroy zutat" do
    assert_difference('Zutat.count', -1) do
      delete :destroy, id: @zutat
    end

    assert_redirected_to zutats_path
  end
end
