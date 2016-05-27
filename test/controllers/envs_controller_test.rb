require 'test_helper'

class EnvsControllerTest < ActionController::TestCase
  setup do
    @env = envs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:envs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create env" do
    assert_difference('Env.count') do
      post :create, env: { content: @env.content, title: @env.title }
    end

    assert_redirected_to env_path(assigns(:env))
  end

  test "should show env" do
    get :show, id: @env
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @env
    assert_response :success
  end

  test "should update env" do
    patch :update, id: @env, env: { content: @env.content, title: @env.title }
    assert_redirected_to env_path(assigns(:env))
  end

  test "should destroy env" do
    assert_difference('Env.count', -1) do
      delete :destroy, id: @env
    end

    assert_redirected_to envs_path
  end
end
