require 'rails_helper'

RSpec.describe Answer, :type => :model do

	describe '.for_question' do
		before do
			@question = FactoryGirl.create :question
		end

		it 'returns answer for question' do
			expect(Answer.for_question(@question)).to eq(8464)
		end

		context 'question range between question_one and question_two' do
			before do
				@question.question_two_upper = 95
				@question.save
			end

			it 'returns random question' do
				expect(Answer.for_question(@question)).to be < 8741
				expect(Answer.for_question(@question)).to be > 8463
			end
		end
	end
end