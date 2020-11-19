Rails.application.routes.draw do
  #get 'ufs/response'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'uf/:date', to: 'ufs#get_uf_value'
  get 'client/:client', to: 'client#get_number_requests'
end
