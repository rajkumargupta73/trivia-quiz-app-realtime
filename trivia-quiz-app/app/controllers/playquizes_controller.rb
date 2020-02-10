class PlayquizesController < ApplicationController
  def index
    @questions=Question.all
    @question=@questions[0];
  end
end
