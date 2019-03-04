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
      redirect_to 'show'
    else
      render 'new'
    end
  end

  def update
    @play = Play.update(play_params)
  end

  def destroy
    @play.destroy
    if @play.nil
      redirect_to top_plays_path
    else
      render 'edit'
    end
  end

  private
  
  def set_play
    @play = Play.find(params[:id])
  end

  def play_params
    params.require(:play).permit(:name, :email)
  end
end
