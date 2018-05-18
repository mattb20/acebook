class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    if current_user
      flash[:signed_up] = "Signup successful, welcome #{current_user.email}"
      redirect_to posts_url
    end
  end
end
