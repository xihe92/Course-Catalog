require "test_helper"

class SubjectsControllerTest < ActionController::TestCase
  def subject
    @subject ||= subjects :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:subjects)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Subject.count") do
      post :create, subject: { s_abbr: subject.s_abbr, s_id: subject.s_id, s_name: subject.s_name, s_type: subject.s_type }
    end

    assert_redirected_to subject_path(assigns(:subject))
  end

  def test_show
    get :show, id: subject
    assert_response :success
  end

  def test_edit
    get :edit, id: subject
    assert_response :success
  end

  def test_update
    put :update, id: subject, subject: { s_abbr: subject.s_abbr, s_id: subject.s_id, s_name: subject.s_name, s_type: subject.s_type }
    assert_redirected_to subject_path(assigns(:subject))
  end

  def test_destroy
    assert_difference("Subject.count", -1) do
      delete :destroy, id: subject
    end

    assert_redirected_to subjects_path
  end
end
