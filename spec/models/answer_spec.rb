require 'rails_helper'

RSpec.describe Answer, :type => :model do

	describe '.for_question' do
		before do
			@question = FactoryGirl.create :question
		end

		it 'returns answer for question' do
			expect(Answer.for_question(@question)).to eq(9016)
		end
	end
end