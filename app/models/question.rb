class Question < ActiveRecord::Base

	def initialize(params = {})
		@discipline = params.fetch(:discipline)
		@chapter = params.fetch(:chapter)
		@question_one = params.fetch(:question_one)
		@question_two = params.fetch(:question_two)
	end

end
