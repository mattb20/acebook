require 'rails_helper'
require './helpers'
RSpec.feature "Logout", type: :feature do
  scenario "User can logout" do
    user_signs_up
    page.find_by_id('log_out').click
    expect(page).to have_content("Signed out successfully")
  end
end
