ActionController::Routing::Routes.draw do |map|
  
  map.resources :users
  map.resource :session
  map.resources :subscriptions
  map.resources :items
  map.resources :feeds do |feeds|
    feeds.resources :items
  end

  map.root :controller => "dashboard", :action => "index"
end
