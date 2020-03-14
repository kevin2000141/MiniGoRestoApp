require 'rails_helper'

RSpec.describe Menu, type: :model do
  it 'is valid with valid attributes' do
    menu = Menu.new
    menu.name = 'Food'
    menu.price = 10_000
    expect(menu).to be_valid
  end
  it 'is not valid without a name' do
    menu = Menu.new
    menu.name = nil
    menu.price = 10_000
    expect(menu).to_not be_valid
  end
  it 'is not valid without a price' do
    menu = Menu.new
    menu.name = 'Food'
    menu.price = nil
    expect(menu).to_not be_valid
  end
end
