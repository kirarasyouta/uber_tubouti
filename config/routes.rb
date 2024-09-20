Rails.application.routes.draw do
  get 'top/hinagata'
  get 'top/karennda'
  get 'top/kannseituti'
  get 'top/tyuumonnruikei'
  get 'top/toiawasekakunin'
  resources :inquiries, only: [:show]
  get '/get-business-days', to: 'business_days#get_business_days'  # ここを修正
end
