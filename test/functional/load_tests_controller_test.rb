require 'test_helper'

class LoadTestsControllerTest < ActionController::TestCase
  setup do
    @load_test = load_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:load_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create load_test" do
    assert_difference('LoadTest.count') do
      post :create, load_test: { duration: @load_test.duration, page_id: @load_test.page_id, rps: @load_test.rps }
    end

    assert_redirected_to load_test_path(assigns(:load_test))
  end

  test "should show load_test" do
    get :show, id: @load_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @load_test
    assert_response :success
  end

  test "should update load_test" do
    put :update, id: @load_test, load_test: { duration: @load_test.duration, page_id: @load_test.page_id, rps: @load_test.rps }
    assert_redirected_to load_test_path(assigns(:load_test))
  end

  test "should destroy load_test" do
    assert_difference('LoadTest.count', -1) do
      delete :destroy, id: @load_test
    end

    assert_redirected_to load_tests_path
  end
end
