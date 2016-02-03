require 'test_helper'

class EvaluatesControllerTest < ActionController::TestCase
  setup do
    @evaluate = evaluates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluate" do
    assert_difference('Evaluate.count') do
      post :create, evaluate: { comment: @evaluate.comment, rating: @evaluate.rating }
    end

    assert_redirected_to evaluate_path(assigns(:evaluate))
  end

  test "should show evaluate" do
    get :show, id: @evaluate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluate
    assert_response :success
  end

  test "should update evaluate" do
    patch :update, id: @evaluate, evaluate: { comment: @evaluate.comment, rating: @evaluate.rating }
    assert_redirected_to evaluate_path(assigns(:evaluate))
  end

  test "should destroy evaluate" do
    assert_difference('Evaluate.count', -1) do
      delete :destroy, id: @evaluate
    end

    assert_redirected_to evaluates_path
  end
end
