class QuizRoomsController < ApplicationController
    def index
        @quiz=QuizRoom.new
        @quiz.username=current_user
    end    

    def create
        @quiz =QuizRoom.create(params.require(:quiz_room).permit(:name,:description,:timeout,:playerno))
        session[:room_id] = @quiz.id
        session[:host_type]='HOST'
        if @quiz.valid?
          redirect_to waitingrooms_path 
        else
          flash[:errors]=@quiz.errors.full_messages
          redirect_to quiz_rooms_path  
        end
    end
end
