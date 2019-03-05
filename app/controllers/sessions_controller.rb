class SessionsController < ApplicationController
  def new
  end

  def create
    play = Play.find_by(email: params[:session][:email].downcase)
    if play && play.authenticate(params[:session][:password])
      log_in play
      redirect_to play
    else
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
