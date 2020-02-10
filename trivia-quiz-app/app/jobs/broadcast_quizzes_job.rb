class BroadcastQuizzesJob < ApplicationJob
  queue_as :default

  def perform(data)
    # Do something later
    ActionCable.server.broadcast "quizzes_#{data[:id]}", data
  end
end
