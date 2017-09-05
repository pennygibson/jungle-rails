require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do
  before :each do
      @category = Category.create! name: 'Apparel'

      1.times do |n|
        @category.products.create!(
          name:  Faker::Hipster.sentence(3),
          description: Faker::Hipster.paragraph(4),
          image: open_asset('apparel1.jpg'),
          quantity: 10,
          price: 64.99
        )
      end
end


    scenario "They can add an item to the cart and it will increase" do
      # ACT
      visit root_path
      click_on 'Add'

      # DEBUG / VERIFY
      save_screenshot

      within('nav'){expect(page).to have_content('My Cart (1)')}

  end
end

