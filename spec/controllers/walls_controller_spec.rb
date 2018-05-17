require 'rails_helper'

RSpec.describe WallsController, type: :controller do

  describe 'GET index' do
    render_views
    it 'shows the posts in reverse chronological order' do
      user = User.create(email: 'example@gmail.com', password: 123456)
      WallsController.any_instance.stub(:current_user).and_return(User.first)
      post = user.posts.build(message: 'EXAMPLE POST HERE!!!!!')
      post.save
      get :show, :params => {:wall_id =>  user.id } 
      expect(response.body).to have_text('EXAMPLE POST HERE!!!!!')
    end
  end
end
