Rails.application.routes.draw do
  root 'support_forms#index'

  get '/support_forms/new' => 'support_forms#new'
  post '/support_forms/new' => 'support_forms#create', as: :support_forms
  
  get "/support_forms/:id" => "support_forms#show", as: :support_form
  
  patch "/support_forms/:id" => "support_forms#update"
  
  delete "/support_forms/:id" => "support_forms#destroy"
  
  get "/support_forms/edit/:id" => "support_forms#edit", as: :edit_support_form

end
