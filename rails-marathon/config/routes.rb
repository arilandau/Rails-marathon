Rails.application.routes.draw do
  resources :galleries do
    resources :paintings
  end
end
