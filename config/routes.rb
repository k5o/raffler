Raffler::Application.routes.draw do
  scope "api" do
    resources :entries
  end

  root to: "main#index"
  # This is a catch-all that sends the request to backbone to handle
  match '*path', to: 'main#index'
end
