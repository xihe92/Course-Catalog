require "test_helper"

class InstructorsControllerTest < ActionController::TestCase
  def instructor
    @instructor ||= instructors :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:instructors)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Instructor.count") do
      post :create, instructor: { i_email: instructor.i_email, i_first: instructor.i_first, i_id: instructor.i_id, i_last: instructor.i_last, i_middle: instructor.i_middle, i_type: instructor.i_type }
    end

    assert_redirected_to instructor_path(assigns(:instructor))
  end

  def test_show
    get :show, id: instructor
    assert_response :success
  end

  def test_edit
    get :edit, id: instructor
    assert_response :success
  end

  def test_update
    put :update, id: instructor, instructor: { i_email: instructor.i_email, i_first: instructor.i_first, i_id: instructor.i_id, i_last: instructor.i_last, i_middle: instructor.i_middle, i_type: instructor.i_type }
    assert_redirected_to instructor_path(assigns(:instructor))
  end

  def test_destroy
    assert_difference("Instructor.count", -1) do
      delete :destroy, id: instructor
    end

    assert_redirected_to instructors_path
  end
end
