module RestaurantsHelper
  def assign_restaurant_creator(restaurant, creator)
    restaurant.user = creator
    restaurant
  end
end
