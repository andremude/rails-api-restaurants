require 'rails_helper'
include RestaurantsHelper
RSpec.describe RestaurantsHelper, type: :helper do
  it 'assigns a user to a restaurant' do
    creator = User.first_or_create!(email: 'paul@example.com', password: '123456', password_confirmation: '123456')
    @restaurant = Restaurant.new(
      name: 'MyName',
      address: 'MyAddress'
    )
    assign_restaurant_creator(@restaurant, creator)
    expect(@restaurant.user).to be(creator)
  end
end
