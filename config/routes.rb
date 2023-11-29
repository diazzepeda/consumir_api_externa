Rails.application.routes.draw do
  resources :articles do
    collection do 
      get "index"
    end
  end
end
