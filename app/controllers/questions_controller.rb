class QuestionsController < ApplicationController

	def next
		chapter = params['chapter'] || session[:chapter] || 1 ## REFACTOR THIS
		session[:chapter] = chapter unless chapter == session[:chapter] ## OUT
		question = Question.get(chapter).formatted
		render partial: 'question_box', locals: {question: question}
	end

	def answer
		question = Question.find_question_by_answer(params[:question])
		answer = Answer.for_question(question)
		render partial: 'answer_box', locals: {answer: answer}
	end

end