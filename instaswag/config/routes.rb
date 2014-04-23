Instaswag::Application.routes.draw do
  get '/swag/:id' => 'application#show'
  get '/home/' => 'application#home'
end
