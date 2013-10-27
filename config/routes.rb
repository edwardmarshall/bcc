Bcc::Application.routes.draw do
  get 'listings' => 'high_voltage/pages#show', id: 'listings'
  root :to => 'high_voltage/pages#show', id: 'home'
end
