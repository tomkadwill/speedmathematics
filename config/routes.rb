Rails.application.routes.draw do
  root 'home#index'

  resource :question, only: [] do
  	member do
  		get 'next'
  		get 'answer'
  	end
  end
end
