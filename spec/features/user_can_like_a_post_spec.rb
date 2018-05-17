require 'rails_helper'
require './helpers'

RSpec.feature "Liking A Post", type: :feature do

  scenario "the user likes a post" do
    user_signs_up
    user_makes_a_post("Hello, world!")
    user_likes_a_post
    expect(page).to have_content("Hello, world! jordan@matt.com")
  end

end