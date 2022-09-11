class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/restaurants" do
    restaurant = Restaurant.all
    restaurant.to_json
  
  end

  get "/restaurants/:id" do
    restaurant = Restaurant.find(params[:id])
    restaurant.to_json(include: :reviews)
  
  end
  



end
