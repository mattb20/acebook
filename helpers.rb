def user_signs_up
    visit "/users/sign_up"
    fill_in "user_email", with: "jordan@matt.com"
    fill_in "user_password", with: "123456abc"
    fill_in "user_password_confirmation", with: "123456abc"
    click_button "Sign up"
  end

  def user_makes_a_post(post)
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: post
    click_button "Submit"
  end

  def user_likes_a_post
    visit "/posts"
    click_link('like-link_1')
  end

