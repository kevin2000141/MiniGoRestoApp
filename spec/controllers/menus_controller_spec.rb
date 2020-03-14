require 'rails_helper'

RSpec.describe MenusController, type: :controller do
  describe 'POST create' do
    it 'creates a new object' do
      post :create, params: { menu: { name: 'Food', price: 10_000 } }
      expect(response.content_type).to eq 'text/html; charset=utf-8'
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
  describe 'PUT update' do
    it '' do
      menu = Menu.create name: 'Food', price: 10_000
      put :update, params: { menu: { name: 'Food', price: 10_000 } }
      
    end
  end
end
