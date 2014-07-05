require 'rails_helper'

RSpec.describe Question, :type => :model do

	describe '.get' do
		before do
			@first_question = FactoryGirl.create :question
			@second_question = FactoryGirl.create :question
		end
		
		it 'returns question record of matching chapter' do
			expect(Question.get(1).chapter).to eq(@first_question.chapter)
		end
	end

	describe '.find_question_by_answer' do
		before do
			@question = FactoryGirl.create :question
		end

		it 'returns question for formatted question string' do
			expect(Question.find_question_by_answer('92x98')).to eq([@question])
		end
	end

	describe '#formatted' do
		it 'returns formatted question string' do
			@question = FactoryGirl.build :question
			expect(@question.formatted).to eq('92 x 98')
		end
	end
end
