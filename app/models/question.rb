class Question < ActiveRecord::Base

	validates_presence_of :chapter

	scope :random_chapter, ->(chapter) { where(chapter: chapter).order("RANDOM()") }

	def self.get(chapter)
		random_chapter(chapter).first
	end

	def formatted
		"#{first_random} x #{second_random}"
	end

	def first_random
		rand(question_one_lower..question_one_upper)
	end

	def second_random
		rand(question_two_lower..question_two_upper)
	end

end
