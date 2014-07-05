class QuestionsController < ApplicationController

	def next
		question = Question.get(1).formatted
		render partial: 'question_box', locals: {chapter: question}
	end

end