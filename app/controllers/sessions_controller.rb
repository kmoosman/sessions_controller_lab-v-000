class SessionsController < ApplicationController
  def new
  end

  def create
    # return redirect_to action: 'new' if params[:name].nil? or params[:name].empty?
    session[:username] = params[:username]
    redirect_to '/'
  end

  def destroy
    session.delete :username
    redirect_to '/'
  end
end
