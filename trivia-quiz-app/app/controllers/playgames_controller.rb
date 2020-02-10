class PlaygamesController < ApplicationController
  def index
    if params[:room_id].present?
      session[:room_id] = params[:room_id]
      session[:host_type]='PLAYER'
      redirect_to waitingrooms_path 
    end
    @quizes=QuizRoom.all;
  end
  
  def create
    
  end  
  
  
end
