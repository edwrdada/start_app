class PlaysController < ApplicationController
  before_action :set_play, only: [:show, :edit, :update, :destroy]
  
  def new
    @play = Play.new
  end

  def edit
  end

  def show
  end

  def top
  end

  def login

  end

  def login_to
    
  end

  def create
    @play = Play.create(play_params)

    if @play.save
      log_in @play
      redirect_to @play
    else
      render 'new'
    end
  end

  def update
    if @play.update_attributes(play_params)

    else
      render 'edit'
    end
  end

  def destroy
    @play.delete
    
    if @play.nil
      redirect_to 'plays/top'
    else
      render 'edit'
    end
  end

  private
  
  def set_play
    @play = Play.find(params[:id])
  end

  def play_params
    params.require(:play).permit(:name, :email,
     :password, :password_confirmation)
  end
end
