require 'test_helper'

class EinzelbewertungsControllerTest < ActionController::TestCase
  setup do
    @einzelbewertung = einzelbewertungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:einzelbewertungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create einzelbewertung" do
    assert_difference('Einzelbewertung.count') do
      post :create, einzelbewertung: { bewertung_id: @einzelbewertung.bewertung_id, typ: @einzelbewertung.typ, wert: @einzelbewertung.wert }
    end

    assert_redirected_to einzelbewertung_path(assigns(:einzelbewertung))
  end

  test "should show einzelbewertung" do
    get :show, id: @einzelbewertung
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @einzelbewertung
    assert_response :success
  end

  test "should update einzelbewertung" do
    put :update, id: @einzelbewertung, einzelbewertung: { bewertung_id: @einzelbewertung.bewertung_id, typ: @einzelbewertung.typ, wert: @einzelbewertung.wert }
    assert_redirected_to einzelbewertung_path(assigns(:einzelbewertung))
  end

  test "should destroy einzelbewertung" do
    assert_difference('Einzelbewertung.count', -1) do
      delete :destroy, id: @einzelbewertung
    end

    assert_redirected_to einzelbewertungs_path
  end
end
