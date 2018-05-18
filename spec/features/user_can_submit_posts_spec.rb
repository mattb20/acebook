require 'rails_helper'
require './helpers'

RSpec.feature "Timeline", type: :feature do

  scenario "User email displayed with a post" do
    user_signs_up
    user_makes_a_post("Hello, world!")
    expect(page).to have_content("Hello, world! jordan@matt.com")
  end

  scenario "Time is displayed with post" do
    user_signs_up
    user_makes_a_post("Hello, world!")
    expect(page).to have_content("Hello, world! jordan@matt.com")
  end

  scenario "all posts are displayed in reverse chronological order" do
    user_signs_up
    user_makes_a_post("1st post entered")
    user_makes_a_post("2nd post entered")
    user_makes_a_post("3rd post entered")
    expect(page).to have_text(/3rd post entered[\S|\s]+2nd post entered[\S|\s]+1st post entered/)
  end
end
