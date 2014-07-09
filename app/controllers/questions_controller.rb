class QuestionsController < ApplicationController

	def next
		chapter = params['chapter'] || 1 # change this to set a session
		question = Question.get(chapter).formatted
		render partial: 'question_box', locals: {question: question}
	end

	def answer
		question = Question.find_question_by_answer(params[:question])
		answer = Answer.for_question(question)
		render partial: 'answer_box', locals: {answer: answer}
	end

end