HackathonUserSystem::Application.routes.draw do
  root to: 'public_pages#home'

  devise_for :users
end
