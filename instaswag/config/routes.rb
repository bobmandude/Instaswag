Instaswag::Application.routes.draw do
  get '/swag/:id' => 'application#show'
  get '/home/' => 'application#home'
  get '/new_swag' => 'application#new'
  get '/create_swag' => 'application#create'
  get '/swag/:id/edit' => 'application#edit'
  get '/update_swag/:id' => 'application#update'
end
