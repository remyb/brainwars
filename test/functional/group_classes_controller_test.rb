require 'test_helper'

class GroupClassesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_class" do
    assert_difference('GroupClass.count') do
      post :create, :group_class => { }
    end

    assert_redirected_to group_class_path(assigns(:group_class))
  end

  test "should show group_class" do
    get :show, :id => group_classes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => group_classes(:one).to_param
    assert_response :success
  end

  test "should update group_class" do
    put :update, :id => group_classes(:one).to_param, :group_class => { }
    assert_redirected_to group_class_path(assigns(:group_class))
  end

  test "should destroy group_class" do
    assert_difference('GroupClass.count', -1) do
      delete :destroy, :id => group_classes(:one).to_param
    end

    assert_redirected_to group_classes_path
  end
end
