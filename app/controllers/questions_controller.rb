class QuestionsController < ApplicationController

	before_filter :set_chapter_session, only: :next
	before_filter :set_question_session, only: :next

	def next
		render partial: 'question_box', locals: {question: @question.formatted}
	end

	def answer
		session_question = session.fetch(:question, 1)
		question = Question.find(session_question)
		answer = Answer.for_question(question)
		render partial: 'answer_box', locals: {answer: answer}
	end

	private

	def set_chapter_session
		@chapter = params['chapter'] || session[:chapter] || 1
		session[:chapter] = @chapter unless @chapter == session[:chapter]
	end

	def set_question_session
		@question = Question.get(@chapter)
		session[:question] = @question.id
	end

end