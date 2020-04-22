class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :is_claimed, :is_closed, :phone, :coordinates, :day, :start, :end
end
