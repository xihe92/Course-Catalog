require "test_helper"

class CsrelationsControllerTest < ActionController::TestCase
  def csrelation
    @csrelation ||= csrelations :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:csrelations)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Csrelation.count") do
      post :create, csrelation: { c_code: csrelation.c_code, c_name: csrelation.c_name, s_id: csrelation.s_id }
    end

    assert_redirected_to csrelation_path(assigns(:csrelation))
  end

  def test_show
    get :show, id: csrelation
    assert_response :success
  end

  def test_edit
    get :edit, id: csrelation
    assert_response :success
  end

  def test_update
    put :update, id: csrelation, csrelation: { c_code: csrelation.c_code, c_name: csrelation.c_name, s_id: csrelation.s_id }
    assert_redirected_to csrelation_path(assigns(:csrelation))
  end

  def test_destroy
    assert_difference("Csrelation.count", -1) do
      delete :destroy, id: csrelation
    end

    assert_redirected_to csrelations_path
  end
end
