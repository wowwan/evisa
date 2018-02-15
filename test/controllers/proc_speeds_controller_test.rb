require 'test_helper'

class ProcSpeedsControllerTest < ActionController::TestCase
  setup do
    @proc_speed = proc_speeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proc_speeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proc_speed" do
    assert_difference('ProcSpeed.count') do
      post :create, proc_speed: { long_desc: @proc_speed.long_desc, order_id: @proc_speed.order_id, price: @proc_speed.price, short_desc: @proc_speed.short_desc }
    end

    assert_redirected_to proc_speed_path(assigns(:proc_speed))
  end

  test "should show proc_speed" do
    get :show, id: @proc_speed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proc_speed
    assert_response :success
  end

  test "should update proc_speed" do
    patch :update, id: @proc_speed, proc_speed: { long_desc: @proc_speed.long_desc, order_id: @proc_speed.order_id, price: @proc_speed.price, short_desc: @proc_speed.short_desc }
    assert_redirected_to proc_speed_path(assigns(:proc_speed))
  end

  test "should destroy proc_speed" do
    assert_difference('ProcSpeed.count', -1) do
      delete :destroy, id: @proc_speed
    end

    assert_redirected_to proc_speeds_path
  end
end
