class WelcomeController < ApplicationController
  before_action :verify_logged_in
  
  def index
    @user = User.find(session[:user_id])
  end
  
end
