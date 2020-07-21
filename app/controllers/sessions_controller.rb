class SessionsController < ApplicationController
  def new
  end

   # redirect to the login form if no name entered 
  def create 
    if params[:name] == nil || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  # user clicks logout link on homepage, delete user.
  # return to login page
  def destroy
      session.delete :name
      redirect_to '/sessions/new'
  end
end
