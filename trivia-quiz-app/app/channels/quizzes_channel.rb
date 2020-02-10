class QuizzesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "quizzes_#{params[:id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  
end
