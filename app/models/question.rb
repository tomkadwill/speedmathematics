class Question < ActiveRecord::Base

	validates_presence_of :chapter

	scope :random_chapter, ->(chapter) { where(chapter: chapter).order("RANDOM()") }

	def self.get(chapter)
		random_chapter(chapter).first
	end

	def self.find_question_by_answer(answer)
		answer_array = answer.split('x')
		where(question_one: answer_array.first, question_two: answer_array.second)
	end

	def formatted
		"#{question_one} x #{question_two}"
	end

end
