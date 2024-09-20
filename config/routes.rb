Rails.application.routes.draw do
  devise_for :users
# 正しい例

get 'top/index'
get 'top/new'
root 'home#index' 
  end
  