require "rails_helper"

RSpec.describe "The login page" do
  let!(:user) { create(:user) }

  before(:each) do
    visit new_user_session_path
  end

  scenario "allows a valid user to log in" do
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"

    expect(page).to have_content("Signed in successfully")
  end

  scenario "does not allow an existing user to log in with an incorrect password" do
    fill_in "Email", with: user.email
    fill_in "Password", with: "wrong password"
    click_button "Log in"

    expect(page).to have_content("Invalid Email or password")
  end
end
