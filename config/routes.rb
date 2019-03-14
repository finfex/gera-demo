Rails.application.routes.draw do
  get 'dashboard/index'
  mount Gera::Engine => '/'
end
