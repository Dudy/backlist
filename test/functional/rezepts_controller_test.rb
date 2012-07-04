require 'test_helper'

class RezeptsControllerTest < ActionController::TestCase
  setup do
    @rezept = rezepts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rezepts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rezept" do
    assert_difference('Rezept.count') do
      post :create, rezept: { anleitung: @rezept.anleitung, benutzer_id: @rezept.benutzer_id, beschreibung: @rezept.beschreibung, rezeptname: @rezept.rezeptname }
    end

    assert_redirected_to rezept_path(assigns(:rezept))
  end

  test "should show rezept" do
    get :show, id: @rezept
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rezept
    assert_response :success
  end

  test "should update rezept" do
    put :update, id: @rezept, rezept: { anleitung: @rezept.anleitung, benutzer_id: @rezept.benutzer_id, beschreibung: @rezept.beschreibung, rezeptname: @rezept.rezeptname }
    assert_redirected_to rezept_path(assigns(:rezept))
  end

  test "should destroy rezept" do
    assert_difference('Rezept.count', -1) do
      delete :destroy, id: @rezept
    end

    assert_redirected_to rezepts_path
  end
end
