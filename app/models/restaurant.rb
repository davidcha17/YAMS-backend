class Restaurant < ApplicationRecord
    has_many :lists
    has_many :users, through: :lists
    

    # use dotenv to hide api key
    # create local variables instead of global variables
    
    # trying to save all the saved parsed_response into the seed data or some database
        
    # DEFAULT_TERM = "food"
    # DEFAULT_LOCATION = "NYC, NY"
    # SEARCH_LIMIT = 5
    
    
    def self.create_restaurant_data(business)
        self.create(
            name: business["name"], 
            url: business["url"], 
            lat: business["coordinates"]["latitude"], 
            long: business["coordinates"]["longitude"], 
            image_url: business["image_url"], 
            address: business["location"]["display_address"].join(", "), 
            price: business["price"],
            phone: business["display_phone"],
            distance: business["distance"],
            kind_of_food: business["categories"].map{|item| item["title"]}.join(", ")
            )
            # byebug
        end
        
        # def self.search
        
        #     url = "https://api.yelp.com/v3/businesses/search"
        #     params = {
        #         term: DEFAULT_TERM,
        #         location: DEFAULT_LOCATION,
        #         open_now: true,
        #         radius: 800,
        #         limit: SEARCH_LIMIT
        #     }
        #         response = HTTP.auth("Bearer #{ENV["KEY"]}").get(url, params: params)
        #         response.parse 
        #         # byebug
        #         response.parse["businesses"].each do |business|
        #             Restaurant.create_restaurant_data(business)
        #         end
    
        # end

    # t.string :name
    #   t.string :image_url
    #   t.string :url
    #   t.string :location
    #   t.integer :phone
    #   t.integer :coordinates
    #   t.float :lat
    #   t.float :long
    #   t.string :address
    #   t.string :category
    #   t.string :price

end

