class Question < ActiveRecord::Base

	validates_presence_of :chapter

	scope :random_chapter, ->(chapter) { where(chapter: chapter).order("RANDOM()") }

	def self.get(chapter)
		random_chapter(chapter).first
	end

	def formatted
		"#{question_one} x #{question_two}"
	end

end
