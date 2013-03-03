Httpbench::Application.routes.draw do
  resources :results
  resources :load_tests
  resources :sites do
    resources :pages
  end
end
