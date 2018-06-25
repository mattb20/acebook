require 'rails_helper'
require './helpers'

RSpec.feature "Viewing a users wall", type: :feature do
  scenario "The user can view another users wall" do
    user_signs_up
    click_link
  end
end
