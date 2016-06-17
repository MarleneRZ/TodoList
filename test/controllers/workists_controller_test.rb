require 'test_helper'

class WorkistsControllerTest < ActionController::TestCase
  setup do
    @workist = workists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workist" do
    assert_difference('Workist.count') do
      post :create, workist: { description: @workist.description, task: @workist.task }
    end

    assert_redirected_to workist_path(assigns(:workist))
  end

  test "should show workist" do
    get :show, id: @workist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workist
    assert_response :success
  end

  test "should update workist" do
    patch :update, id: @workist, workist: { description: @workist.description, task: @workist.task }
    assert_redirected_to workist_path(assigns(:workist))
  end

  test "should destroy workist" do
    assert_difference('Workist.count', -1) do
      delete :destroy, id: @workist
    end

    assert_redirected_to workists_path
  end
end
