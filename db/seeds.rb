

# cha = User.create(username: "bha", password: "123" )
# bha = User.create(username: "cha", password: "123" )

# yelp = Restaurant.create(name: "old", price: "$$$$")
# pley = Restaurant.create(name: "new", price: "$")

# list_cha = List.create(user_id: 1, restaurant_id: 1, distance: 100)

# creating the instances are a success and password_digests are being filtered

# Actual seed data
       
DEFAULT_TERM = "food"
DEFAULT_LOCATION = "NYC, NY"
SEARCH_LIMIT = 5

def self.search

    url = "https://api.yelp.com/v3/businesses/search"
    params = {
        term: DEFAULT_TERM,
        location: "89 Prospect Street, Brooklyn, New York 07307",
        limit: SEARCH_LIMIT,
        radius: 800, 
        open_now: true
    }
        response = HTTP.auth("Bearer #{ENV["KEY"]}").get(url, params: params)
        response.parse 
        # byebug

end

self.search["businesses"].each do |business|
    # byebug
    Restaurant.create_restaurant_data(business)
end