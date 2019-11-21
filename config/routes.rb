Rails.application.routes.draw do
  root to: 'search#home'
  get 'properties', to: 'search#results'
end
