MailgunRails::Application.routes.draw do
  resources :letters
  post 'upload_template' => 'letters#upload_template'
  root 'letters#index'
end
