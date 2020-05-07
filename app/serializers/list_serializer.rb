class ListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :restaurant_id
  # belongs_to :user, :restaurant
end


# {"id"=>122, "name"=>"Juliana's Pizza", 
# "image_url"=>"https://s3-media2.fl.yelpcdn.com/bphoto/clscwgOF9_Ecq-Rwsq7jyQ/o.jpg", 
# "url"=>"https://www.yelp.com/biz/julianas-pizza-brooklyn-5?adjust_creative=olaUSdoDsgtW1eSkwj2mJQ&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=olaUSdoDsgtW1eSkwj2mJQ",
#  "phone"=>"(718) 596-6700", 
#  "lat"=>40.7026153030093, 
#  "long"=>-73.9934159993549, 
#  "address"=>"19 Old Fulton St, Brooklyn, NY 11201", 
#  "price"=>"$$", "kind_of_food"=>"Pizza", 
#  "distance"=>575, "transactions"=>"", 
#  "lists"=>[], 
