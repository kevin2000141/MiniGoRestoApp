require 'rails_helper'

RSpec.describe MenusController, type: :controller do
  context 'POST create' do
    it 'creates a new object' do
      post :create, { menu: { name: 'Food', price: 10_000 } }
      expect(response.content_type).to eq "text/html"
    end
  end
  
  
  # describe 'GET index' do
  #   it 'assigns @menus' do
  #     menu_params = { name: 'Food', price: 10_000 }
  #     post :create, menu_params
  #     get :index
  #     expect(assigns(:menus)).to eq([menu])
  #   end

  #   it 'renders the index template' do
  #     get :index
  #     expect(response).to render_template('index')
  #   end
  # end
end
