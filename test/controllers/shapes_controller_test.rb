require 'test_helper'

class ShapesControllerTest < ActionController::TestCase
  setup do
    @shape = shapes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shapes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shape" do
    assert_difference('Shape.count') do
      post :create, shape: { cx: @shape.cx, cy: @shape.cy, height: @shape.height, points: @shape.points, r: @shape.r, style: @shape.style, svg_height: @shape.svg_height, svg_width: @shape.svg_width, type: @shape.type, width: @shape.width }
    end

    assert_redirected_to shape_path(assigns(:shape))
  end

  test "should show shape" do
    get :show, id: @shape
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shape
    assert_response :success
  end

  test "should update shape" do
    patch :update, id: @shape, shape: { cx: @shape.cx, cy: @shape.cy, height: @shape.height, points: @shape.points, r: @shape.r, style: @shape.style, svg_height: @shape.svg_height, svg_width: @shape.svg_width, type: @shape.type, width: @shape.width }
    assert_redirected_to shape_path(assigns(:shape))
  end

  test "should destroy shape" do
    assert_difference('Shape.count', -1) do
      delete :destroy, id: @shape
    end

    assert_redirected_to shapes_path
  end
end
