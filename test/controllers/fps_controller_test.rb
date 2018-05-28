require 'test_helper'

class FpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fp = fps(:one)
  end

  test "should get index" do
    get fps_url
    assert_response :success
  end

  test "should get new" do
    get new_fp_url
    assert_response :success
  end

  test "should create fp" do
    assert_difference('Fp.count') do
      post fps_url, params: { fp: { email: @fp.email, name: @fp.name } }
    end

    assert_redirected_to fp_url(Fp.last)
  end

  test "should show fp" do
    get fp_url(@fp)
    assert_response :success
  end

  test "should get edit" do
    get edit_fp_url(@fp)
    assert_response :success
  end

  test "should update fp" do
    patch fp_url(@fp), params: { fp: { email: @fp.email, name: @fp.name } }
    assert_redirected_to fp_url(@fp)
  end

  test "should destroy fp" do
    assert_difference('Fp.count', -1) do
      delete fp_url(@fp)
    end

    assert_redirected_to fps_url
  end
end
