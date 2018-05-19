require 'rails_helper'
require './helpers'

RSpec.feature "Timeline", type: :feature do

  scenario "User email displayed with a post" do
    user_signs_up
    user_makes_a_post("Hello, world!")
    expect(page).to have_content("Likes: 0")
  end
end
