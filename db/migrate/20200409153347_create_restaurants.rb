class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :image_url
      t.string :url
      t.string :location
      t.integer :phone
      t.integer :coordinates
      t.string :display_address
      t.string :price
      t.integer :distance

      t.timestamps
    end
  end
end


# "businesses": [
#   {
#       "id": "yb9o5T88FPUXYOzxyXlUcw",
#       "alias": "ganesh-temple-canteen-flushing",
#       "name": "Ganesh Temple Canteen",
#       "image_url": "https://s3-media3.fl.yelpcdn.com/bphoto/E110XAERWU-1hRPIVnKxcg/o.jpg",
#       "is_closed": false,
#       "url": "https://www.yelp.com/biz/ganesh-temple-canteen-flushing?adjust_creative=olaUSdoDsgtW1eSkwj2mJQ&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=olaUSdoDsgtW1eSkwj2mJQ",
#       "review_count": 243,
#       "categories": [
#           {
#               "alias": "indpak",
#               "title": "Indian"
#           },
#           {
#               "alias": "vegetarian",
#               "title": "Vegetarian"
#           },
#           {
#               "alias": "vegan",
#               "title": "Vegan"
#           }
#       ],
#       "rating": 4.5,
#       "coordinates": {
#           "latitude": 40.75262,
#           "longitude": -73.816511
#       },
#       "transactions": [],
#       "price": "$",
#       "location": {
#           "address1": "143-09 Holly Ave",
#           "address2": "",
#           "address3": "",
#           "city": "Flushing",
#           "zip_code": "11355",
#           "country": "US",
#           "state": "NY",
#           "display_address": [
#               "143-09 Holly Ave",
#               "Flushing, NY 11355"
#           ]
#       },
#       "phone": "+17184608493",
#       "display_phone": "(718) 460-8493",
#       "distance": 598.4337549491028
#   }
