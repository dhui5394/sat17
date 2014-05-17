class QuestionsController < ApplicationController

  def new
  	@statement = Statement.first
  	set_vals
  end

  def create
  	@answer = Answer.new(answer_params)
    if @answer.save
    	if @answer.statements_id.to_i == Statement.all.length
    		redirect_to action: 'index' and return
    	else 
    	  @statement = Statement.find @answer.statements_id.to_i+1
    	  set_vals
        render action: 'new'
      end
    else
    	render action 'new', notice: 'Something is wrong. Please try again'
    end
  end

  def set_vals
  	@answer = Answer.new
    @options = @statement.options
  end

  def answer_params
    params.require(:answer).permit(:statements_id,:options_id)
  end
end
