require "test_helper"

class CoursesControllerTest < ActionController::TestCase
  def course
    @course ||= courses :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Course.count") do
      post :create, course: { c_code: course.c_code, c_id: course.c_id, c_name: course.c_name, c_type: course.c_type }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  def test_show
    get :show, id: course
    assert_response :success
  end

  def test_edit
    get :edit, id: course
    assert_response :success
  end

  def test_update
    put :update, id: course, course: { c_code: course.c_code, c_id: course.c_id, c_name: course.c_name, c_type: course.c_type }
    assert_redirected_to course_path(assigns(:course))
  end

  def test_destroy
    assert_difference("Course.count", -1) do
      delete :destroy, id: course
    end

    assert_redirected_to courses_path
  end
end
