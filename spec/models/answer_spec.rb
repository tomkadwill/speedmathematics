require 'rails_helper'

RSpec.describe Answer, :type => :model do

	describe '.for_question' do
		before do
			@question = FactoryGirl.create :question
		end

		it 'returns answer for question' do
			question_collection = []
			question_collection << @question
			expect(Answer.for_question(question_collection)).to eq(9016)
		end
	end
end