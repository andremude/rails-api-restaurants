require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  current_user = User.first_or_create!(email: 'paul@example.com', password: '123456', password_confirmation: '123456')

  it 'has a name' do
    restaurant = Restaurant.new(
      name: '',
      address: 'Has an address',
      user: current_user
    )

    expect(restaurant).to_not be_valid
    restaurant.name = 'Has a name'
    expect(restaurant).to be_valid
  end

  it 'has an address' do
    restaurant = Restaurant.new(
      name: 'Name of restaurant',
      address: '',
      user: current_user
    )

    expect(restaurant).to_not be_valid

    restaurant.address = 'Has an address'
    expect(restaurant).to be_valid
  end
end
