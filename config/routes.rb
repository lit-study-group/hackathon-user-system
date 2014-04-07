HackathonUserSystem::Application.routes.draw do
  authenticated :user do
    root to: 'dashboard#show'
  end
  root to: 'public_pages#home', as: :public_root

  devise_for :users, skip: [:sessions]
  as :user do
    post   '/login' => 'devise/sessions#create', as: 'user_session'
    delete '/logout' => 'devise/sessions#destroy', as: 'destroy_user_session'
  end
end
