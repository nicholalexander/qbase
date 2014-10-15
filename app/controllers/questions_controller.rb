class QuestionsController < ApplicationController

  def index
    questions = Question.order(created_at: :desc)
    @firstQuestion = questions.first
    @remainderOfQuestions = questions[1..-1]
  end
  
  def show
    @question = Question.find_by_id(params["id"])
  end

  def new
    @question = Question.new
  end

  def create
    question = Question.new(question_params)
    if question.save
      redirect_to question_path(question.id)
    end
  end

private
  def question_params
    params.require(:question).permit(:title, :query)
  end


end
