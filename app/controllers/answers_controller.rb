class AnswersController < ApplicationController

  def create
    question = Question.find_by_id(params["question_id"])
    answer = Answer.new(answers_params)
    answer.save
    question.answers << answer
    redirect_to question_path(question.id)
  end

  def vote
    answer = Answer.find_by_id(params["id"])
    answer.votes += 1
    answer.save

    respond_to do |format|
      format.json { render json:
                        { "answer_id" => answer.id.to_json,
                          "answer_votes" => answer.votes.to_json }
                  }
    end
  end


private
  def answers_params
    params.require(:answer).permit(:response)
  end


end
