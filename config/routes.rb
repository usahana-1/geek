Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get 'hello/index' => 'hello#index'
root 'hello#index'

get 'hello/link' => 'hello#link'
get 'tweets' => 'tweets#index'

#投稿ページ表示
get 'tweets/new' => 'tweets#new'
#ここまで
post 'tweets' => 'tweets#create'

get 'tweets/:id' => 'tweets#show',as: 'tweet'

patch 'tweets/:id' => 'tweets#update'
delete 'tweets/:id' => 'tweets#destroy' #ここに挿入！！！
get 'tweets/:id/edit' => 'tweets#edit', as:'edit_tweet'

end
