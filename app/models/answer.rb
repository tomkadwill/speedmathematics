class Answer
	#include ActiveModel::Validations

	def self.for_question(question)
		question = question.first
		question.question_one * question.question_two
	end

	def initializer(question)
		@question = question
	end

	def result
		100
	end

end