AppDemo::Application.routes.draw do
  get "/" => "forum#index", :as => "questions"
  get "/nova-discussao" => "forum#new", :as => "new_question"
  get "/:id" => "forum#show", :as => "question"
  post  "/" => "forum#create"
  put   "/:id" => "forum#update"
end
