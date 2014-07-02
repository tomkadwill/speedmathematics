class Answer
	#include ActiveModel::Validations

	def initializer(question)
		@question = question
	end

	def result
		100
	end

end