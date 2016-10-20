Source::Application.routes.draw do
  
  root :to => redirect("/charges")

  get "/charges" => "charges#index"
end
