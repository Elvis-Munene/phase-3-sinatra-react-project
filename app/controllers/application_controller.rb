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

  delete "/restaurants/:id" do
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy 
    restaurant.to_json
    
  end

  post '/restaurants/:id' do
    restaurant = Restaurant.create(
      name: params[:name],
      image_url: params[:image_url]

    )
    restaurant.to_json
  end
  patch '/restaurants/:id' do
    restaurant = Restaurant.find(params[:id])
    restaurant.update(
      name: params[:name],
      image_url: params[:image_url]
    )
    restaurant.to_json
  end

  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  
  end
  
  post '/reviews' do
    review = Review.create(
      title: params[:title],
      description:params[:description],
      score: params[:score]
    )
    review.to_json
  end
  
  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(
      title: params[:title],
      score: params[:score],
      description: params[:description]
    )
    review.to_json
  end
end
