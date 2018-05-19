require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'GET index' do
    render_views
    it 'shows the posts in reverse chronological order' do
      user = User.create(email: 'example@gmail.com', password: 123456)
      PostsController.any_instance.stub(:current_user).and_return(User.first)
      save_sample_posts(user)
      get :index
      expect(response.body).to have_text(/3rd post entered[\S|\s]+2nd post entered[\S|\s]+1st post entered/)
    end
    it 'allows the user to like a post and will show the number of times a post has been liked' do
      user = User.create(email: 'example@gmail.com', password: 123456)
      PostsController.any_instance.stub(:current_user).and_return(User.first)
    end
  end
end
