require 'test_helper'

class PandasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @panda = pandas(:one)
  end

  test "should get index" do
    get pandas_url
    assert_response :success
  end

  test "should get new" do
    get new_panda_url
    assert_response :success
  end

  test "should create panda" do
    assert_difference('Panda.count') do
      post pandas_url, params: { panda: { city: @panda.city, name: @panda.name } }
    end

    assert_redirected_to panda_url(Panda.last)
  end

  test "should show panda" do
    get panda_url(@panda)
    assert_response :success
  end

  test "should get edit" do
    get edit_panda_url(@panda)
    assert_response :success
  end

  test "should update panda" do
    patch panda_url(@panda), params: { panda: { city: @panda.city, name: @panda.name } }
    assert_redirected_to panda_url(@panda)
  end

  test "should destroy panda" do
    assert_difference('Panda.count', -1) do
      delete panda_url(@panda)
    end

    assert_redirected_to pandas_url
  end
end
