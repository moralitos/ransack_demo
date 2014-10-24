require 'test_helper'

class ProjectAdministrationsControllerTest < ActionController::TestCase
  setup do
    @project_administration = project_administrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_administrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_administration" do
    assert_difference('ProjectAdministration.count') do
      post :create, project_administration: { hours: @project_administration.hours, project_id: @project_administration.project_id, status: @project_administration.status }
    end

    assert_redirected_to project_administration_path(assigns(:project_administration))
  end

  test "should show project_administration" do
    get :show, id: @project_administration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_administration
    assert_response :success
  end

  test "should update project_administration" do
    patch :update, id: @project_administration, project_administration: { hours: @project_administration.hours, project_id: @project_administration.project_id, status: @project_administration.status }
    assert_redirected_to project_administration_path(assigns(:project_administration))
  end

  test "should destroy project_administration" do
    assert_difference('ProjectAdministration.count', -1) do
      delete :destroy, id: @project_administration
    end

    assert_redirected_to project_administrations_path
  end
end
