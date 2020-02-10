class QuestionsController < ApplicationController
  def index
    @questions=Question.all
  end

  def new
    @question=Question.new
  end

  def create
    @question =Question.create(params.require(:question).permit(:question,:wrong_answer1,:wrong_answer2,:wrong_answer3,:right_answer,:difficulty))
    if @question.valid?
      redirect_to questions_path
    else
      flash[:errors]=@question.errors.full_messages
      redirect_to new_question_path  
    end
  end 

  def show
  end

  def edit
    @question =Question.find(params[:id])
   
  end

  def update
    @question =Question.find(params[:id])
    @question.update(params.require(:question).permit(:question,:wrong_answer1,:wrong_answer2,:wrong_answer3,:right_answer,:difficulty))
    redirect_to questions_path(@question)
  end

  def destroy
    @question =Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end
end
