require "rails_helper"

RSpec.describe "The navbar" do
  let!(:admin) { create(:user, :admin) }
  let!(:user) { create(:user) }

  scenario "shows admin menu for admins" do
    sign_in admin
    visit root_path

    expect(page).to have_text("Admin")
  end

  scenario "does not show admin menu for non-admins" do
    sign_in user
    visit root_path

    expect(page).not_to have_link("Admin")
  end
end
