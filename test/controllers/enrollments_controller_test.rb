require "test_helper"

class EnrollmentsControllerTest < ActionController::TestCase
  def enrollment
    @enrollment ||= enrollments :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:enrollments)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Enrollment.count") do
      post :create, enrollment: { c_code: enrollment.c_code, c_name: enrollment.c_name, s_id: enrollment.s_id, u_id: enrollment.u_id }
    end

    assert_redirected_to enrollment_path(assigns(:enrollment))
  end

  def test_show
    get :show, id: enrollment
    assert_response :success
  end

  def test_edit
    get :edit, id: enrollment
    assert_response :success
  end

  def test_update
    put :update, id: enrollment, enrollment: { c_code: enrollment.c_code, c_name: enrollment.c_name, s_id: enrollment.s_id, u_id: enrollment.u_id }
    assert_redirected_to enrollment_path(assigns(:enrollment))
  end

  def test_destroy
    assert_difference("Enrollment.count", -1) do
      delete :destroy, id: enrollment
    end

    assert_redirected_to enrollments_path
  end
end
