require "test_helper"

class UserErrrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_errro = user_errros(:one)
  end

  test "should get index" do
    get user_errros_url
    assert_response :success
  end

  test "should get new" do
    get new_user_errro_url
    assert_response :success
  end

  test "should create user_errro" do
    assert_difference("UserErrro.count") do
      post user_errros_url, params: { user_errro: { date: @user_errro.date, error_id: @user_errro.error_id, note: @user_errro.note, user_id: @user_errro.user_id } }
    end

    assert_redirected_to user_errro_url(UserErrro.last)
  end

  test "should show user_errro" do
    get user_errro_url(@user_errro)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_errro_url(@user_errro)
    assert_response :success
  end

  test "should update user_errro" do
    patch user_errro_url(@user_errro), params: { user_errro: { date: @user_errro.date, error_id: @user_errro.error_id, note: @user_errro.note, user_id: @user_errro.user_id } }
    assert_redirected_to user_errro_url(@user_errro)
  end

  test "should destroy user_errro" do
    assert_difference("UserErrro.count", -1) do
      delete user_errro_url(@user_errro)
    end

    assert_redirected_to user_errros_url
  end
end
