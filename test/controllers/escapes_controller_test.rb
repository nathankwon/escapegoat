require 'test_helper'

class EscapesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @escape = escapes(:one)
  end

  test "should get index" do
    get escapes_url
    assert_response :success
  end

  test "should get new" do
    get new_escape_url
    assert_response :success
  end

  test "should create escape" do
    assert_difference('Escape.count') do
      post escapes_url, params: { escape: { description: @escape.description, dollar_amount: @escape.dollar_amount, location: @escape.location, requirements: @escape.requirements, rescue_title: @escape.rescue_title, user_id: @escape.user_id } }
    end

    assert_redirected_to escape_url(Escape.last)
  end

  test "should show escape" do
    get escape_url(@escape)
    assert_response :success
  end

  test "should get edit" do
    get edit_escape_url(@escape)
    assert_response :success
  end

  test "should update escape" do
    patch escape_url(@escape), params: { escape: { description: @escape.description, dollar_amount: @escape.dollar_amount, location: @escape.location, requirements: @escape.requirements, rescue_title: @escape.rescue_title, user_id: @escape.user_id } }
    assert_redirected_to escape_url(@escape)
  end

  test "should destroy escape" do
    assert_difference('Escape.count', -1) do
      delete escape_url(@escape)
    end

    assert_redirected_to escapes_url
  end
end
