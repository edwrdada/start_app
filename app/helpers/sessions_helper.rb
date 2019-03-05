module SessionsHelper
  def log_in(play)
    session[:play_id] = play.id
  end

  def current_play
    if session[:play_id]
      @current_play ||= Play.find_by(id: session[:play_id])
  end

  def log_out
    session.delete(:play_id)
    @current_play = nil
  end
end
