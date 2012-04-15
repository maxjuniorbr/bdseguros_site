Bdsite::Application.routes.draw do
  root :to => 'home#index'

  #Tipos de seguros
  match 'seguros' => 'insurances#index'

  #Cotação/Email cotação
  match 'cotacao' => 'quotes#index'

  #Erros
  match 'erros' => 'errors#index'
end