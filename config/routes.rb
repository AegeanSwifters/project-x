Rails.application.routes.draw do
  root to: 'visitors#index'
  
  get 'venue/:id' => 'visitors#venue', as: :venue
end
