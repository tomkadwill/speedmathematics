class QuestionsController < ApplicationController

	def next
		# rafactor out of controller
		chapter = params['chapter'] || session[:chapter] || 1
		session[:chapter] = chapter unless chapter == session[:chapter]

		# rafactor out of controller
		question = Question.get(chapter)
		session[:question] = question.id

		render partial: 'question_box', locals: {question: question.formatted}
	end

	def answer
		session_question = session.fetch(:question, 1)
		question = Question.find(session_question)
		answer = Answer.for_question(question)
		render partial: 'answer_box', locals: {answer: answer}
	end

end