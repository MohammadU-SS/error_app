require "application_system_test_case"

class UserErrrosTest < ApplicationSystemTestCase
  setup do
    @user_errro = user_errros(:one)
  end

  test "visiting the index" do
    visit user_errros_url
    assert_selector "h1", text: "User errros"
  end

  test "should create user errro" do
    visit user_errros_url
    click_on "New user errro"

    fill_in "Date", with: @user_errro.date
    fill_in "Error", with: @user_errro.error_id
    fill_in "Note", with: @user_errro.note
    fill_in "User", with: @user_errro.user_id
    click_on "Create User errro"

    assert_text "User errro was successfully created"
    click_on "Back"
  end

  test "should update User errro" do
    visit user_errro_url(@user_errro)
    click_on "Edit this user errro", match: :first

    fill_in "Date", with: @user_errro.date
    fill_in "Error", with: @user_errro.error_id
    fill_in "Note", with: @user_errro.note
    fill_in "User", with: @user_errro.user_id
    click_on "Update User errro"

    assert_text "User errro was successfully updated"
    click_on "Back"
  end

  test "should destroy User errro" do
    visit user_errro_url(@user_errro)
    click_on "Destroy this user errro", match: :first

    assert_text "User errro was successfully destroyed"
  end
end
