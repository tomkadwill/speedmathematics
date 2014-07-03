require 'rails_helper'

RSpec.describe Question, :type => :model do

	describe '#get' do
		before do
			@question = Question.new
			@question.discipline = 'multiplication'
			@question.chapter = 2
			@question.question_one = 92
			@question.question_two = 92
			@question.save!
		end

		# change this to return a random record
		# beforehand - you should install factory girl
		it 'returns question record' do
			expect(Question.get('multiplication', 2).first).to eq(@question)
		end

	end
end
