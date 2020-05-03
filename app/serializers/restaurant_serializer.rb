class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :url, :phone, :lat, :long, :address, :price, :kind_of_food, :distance
  has_many :lists
  
end
