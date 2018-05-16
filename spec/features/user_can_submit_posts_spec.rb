require 'rails_helper'
def user_makes_a_post(post)
  visit "/posts"
  click_link "New post"
  fill_in "Message", with: post
  click_button "Submit"
end 

def user_signs_up
  visit "/users/sign_up"
  fill_in "user_email", with: "jordan@matt.com"
  fill_in "user_password", with: "123456abc"
  fill_in "user_password_confirmation", with: "123456abc"
  click_button "Sign up"
end

RSpec.feature "Timeline", type: :feature do

  scenario "User email displayed with a post" do
    user_signs_up
    user_makes_a_post("Hello, world!")
    expect(page).to have_content("jordan@matt.com: Hello, world!")
  end

  scenario "Time is displayed with post" do 
    user_signs_up
    user_makes_a_post("Hello, world!")
    expect(page).to have_content("jordan@matt.com: Hello, world! less than a minute ago")
  end  


  scenario "all posts are displayed in reverse chronological order" do
    user_signs_up
    user_makes_a_post("1st post entered")
    user_makes_a_post("2nd post entered")
    user_makes_a_post("3rd post entered")
    expect(page).to have_text(/3rd post entered[\S|\s]+2nd post entered[\S|\s]+1st post entered/)

  end
end
