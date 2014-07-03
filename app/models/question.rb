class Question < ActiveRecord::Base

	validates_presence_of :discipline, :chapter

	scope :get, ->(discipline, chapter) { where(:discipline => discipline, :chapter => chapter)}

end
