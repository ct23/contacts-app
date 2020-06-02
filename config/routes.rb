Rails.application.routes.draw do

  namespace :api do
    get "/contacts" => "contacts#index"           # Index
    get "/contacts/:id" => "contacts#show"        # Show
    post "/contacts" => "contacts#create"         # Create
    patch "/contacts/:id" => "contacts#update"    # Update
    delete "/contacts/:id" => "contacts#destroy"  # Destroy
    # Destroy
  end

end
