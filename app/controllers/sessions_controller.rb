class SessionsController < ApplicationController
  
  def new
    @user = User.new
  end
  
  #def create
  #  user = User.find_by(name: params[:name])
  #  user = user.try(:authenticate, params[:password])
  #  return redirect_to new_session_path unless user
  #  session[:user_id] = user.id
  #  redirect_to welcome_path
  #end
  
  def create
    user = User.find_by(name: params[:name])

    user = user.try(:authenticate, params[:password])

    return redirect_to(controller: 'sessions', action: 'new') unless user

    session[:user_id] = user.id

    @user = user

    redirect_to controller: 'welcome', action: 'index'
  end
  
  def destroy
    session.delete :user_id
    redirect_to new_user_path
  end
  
end
