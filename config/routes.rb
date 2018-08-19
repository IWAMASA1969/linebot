Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/hear', to: 'hear#create'
  post '/callback', to: 'echo#callback'
end
