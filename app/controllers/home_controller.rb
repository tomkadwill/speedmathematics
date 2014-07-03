class HomeController < ApplicationController
		# 1) Check if the user has made a selection from the dropdown menu.
		# If so, set the session and skip 2)

		# 2) If the user has not made a selection - 
		# check the session for chapter (this will have a different
		# ID depending on the discipline that you have clicked on so you will
		# know the discliple and session).
		# ELSE
		# don't show the play button and force the user to make a choice.

	def index
		@question = '92 x 98'
		@answer = 9016
	end
end