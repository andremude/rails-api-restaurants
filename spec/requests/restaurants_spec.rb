RSpec.describe '/restaurants', type: :request do
  current_user = User.first_or_create!(email: 'paul@example.com', password: '123456', password_confirmation: '123456')

  let(:valid_attributes) do
    {
      'id' => '1',
      'name' => 'Test',
      'address' => 'Test 12345',
      'user' => current_user
    }
  end

  let(:invalid_attributes) do
    {
      'id' => 'a',
      'name' => '',
      'address' => ''
    }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      restaurant = Restaurant.new(valid_attributes)
      restaurant.user = current_user
      restaurant.save
      get api_v1_restaurants_path
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      restaurant = Restaurant.new(valid_attributes)
      restaurant.user = current_user
      restaurant.save
      get api_v1_restaurant_path(restaurant)
      expect(response).to be_successful
    end
  end

  # describe 'GET /new' do
  #   it 'renders a successful response' do
  #     get api_v1_restaurant_path
  #     expect(response).to be_successful
  #   end
  # end

  describe 'GET /edit' do
    it 'render a successful response' do
      restaurant = Restaurant.new(valid_attributes)
      restaurant.user = current_user
      restaurant.save
      get api_v1_restaurant_path(restaurant)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Restaurant' do
        expect do
          restaurant = Restaurant.new(valid_attributes)
          restaurant.user = current_user
          restaurant.save
          post api_v1_restaurants_path, params: { restaurant: valid_attributes }
        end.to change(Restaurant, :count).by(1)
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Restaurant' do
        expect do
          post api_v1_restaurants_path, params: { restaurant: invalid_attributes }
        end.to change(Restaurant, :count).by(0)
      end
    end
  end

  # describe 'PATCH /update' do
  #   context 'with valid parameters' do
  #     let(:new_attributes) do
  #       {
  #         'id' => '1',
  #         'name' => 'Testing',
  #         'address' => 'Test 12345',
  #         'user' => current_user
  #       }
  #     end

  #     it 'updates the requested restaurant' do
  #       restaurant = Restaurant.new(valid_attributes)
  #       restaurant.user = current_user
  #       restaurant.save
  #       patch api_v1_restaurants_path(restaurant), params: { restaurant: new_attributes }
  #       restaurant.reload
  #       skip('Add assertions for updated state')
  #     end
  #   end

  #   context 'with invalid parameters' do
  #     it "renders a successful response (i.e. to display the 'edit' template)" do
  #       restaurant = Restaurant.create! valid_attributes
  #       patch api_v1_restaurants_path(restaurant), params: { restaurant: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end

  # describe 'DELETE /destroy' do
  #   it 'destroys the requested restaurant' do
  #     restaurant = Restaurant.new(valid_attributes)
  #     restaurant.user = current_user
  #     restaurant.save
  #     expect do
  #       delete api_v1_restaurant_path(restaurant)
  #     end.to change(Restaurant, :count).by(-1)
  #   end
  # end
end
