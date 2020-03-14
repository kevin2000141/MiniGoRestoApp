require 'rails_helper'

RSpec.describe MenusController, type: :controller do
  describe 'POST create' do
    it 'creates a new object' do
      post :create, params: { menu: { name: 'Food', price: 10_000 } }
      expect(response).to be_redirect
    end
    it 'fails to create object because no name param' do
      post :create, params: { menu: { name: nil, price: 10_000 } }
      expect(response).not_to be_redirect
    end
    it 'fails to create object because no price param' do
      post :create, params: { menu: { name: 'Food', price: nil } }
      expect(response).not_to be_redirect
    end
  end
  describe 'GET index' do
    it 'assigns @menus' do
      menu = Menu.create name: 'Food', price: 10_000
      get :index
      expect(assigns(:menus)).to eq([menu])
    end
    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
  describe 'PATCH update:id' do
    it 'updates name Food to name Updated_food' do
      menu = Menu.create name: 'Food', price: 10_000
      patch :update, params: { id: menu.id, menu: {
        name: 'Updated_food',
        price: 11_000
      } }
      updated_menu = Menu.find_by(name: 'Updated_food')
      expect(updated_menu.price).to eq(11_000)
    end
  end
end
