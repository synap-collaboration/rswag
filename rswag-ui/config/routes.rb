Rswag::Ui::Engine.routes.draw do
  root to: 'home#index'

  get 'o2c.html', to: 'home#o2c'
end
