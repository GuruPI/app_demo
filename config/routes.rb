AppDemo::Application.routes.draw do
  get "/" => "forum#index", :as => "questions"
  get "/nova-discussao" => "forum#new", :as => "new_question"
  get "/:id" => "forum#show", :as => "question"
  get "/:id/resposta" => "forum#reply", :as => "reply"
  post  "/" => "forum#create"
  put   "/:id" => "forum#update"
end
