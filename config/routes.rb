Rails.application.routes.draw do
  resources :alunos
  put '/alunos/:id', to: 'alunos#update'
  delete '/alunos/:id', to: 'alunos#destroy'
end
