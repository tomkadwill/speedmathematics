require 'rails_helper'

RSpec.describe Question, :type => :model do

	before do
		@question = FactoryGirl.create :question
	end

	describe '.get' do
		it 'returns question record of matching chapter' do
			expect(Question.get(1).chapter).to eq(@question.chapter)
		end
	end

	describe '#formatted' do
		it 'returns formatted question string' do
			expect(@question.formatted).to eq('92 x 92')
		end
	end

	context 'test random' do
		before do
			@question.question_one_upper = 95
			@question.question_two_upper = 95
			@question.save
		end

		describe '#first_random' do
			it 'returns first random number' do
				expect(@question.first_random).to be < 96
				expect(@question.first_random).to be > 91
			end
		end

		describe '#second_random' do
			it 'returns second random number' do
				expect(@question.first_random).to be < 96
				expect(@question.first_random).to be > 91
			end
		end
	end
end
