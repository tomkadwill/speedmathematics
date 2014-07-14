class Answer

	def self.for_question(question)
		question.first_random * question.second_random
	end

end