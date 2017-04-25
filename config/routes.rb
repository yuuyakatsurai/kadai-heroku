Rails.application.routes.draw do
  get 'messages/:id', to: 'messages#show'
  post 'messages', to: 'messages#create'
  put 'messages/:id', to: 'messages#update'
  delete 'messages/:id', to: 'messages#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # index: show の補助ページ
  get 'messages', to: 'messages#index'

  # new: 新規作成用のフォームページ
  get 'messages/new', to: 'messages#new'

  # edit: 更新用のフォームページ
  get 'messages/:id/edit', to: 'messages#edit'
end

#上記ソースコードの省略版

#Rails.application.routes.draw do
#  root to: 'messages#index'
#  resources :messages
#end
