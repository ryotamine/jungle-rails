require "rails_helper"
require "faker"

RSpec.feature "AddToCarts", type: :feature, js: true do
  
  # SETUP
  before :each do
    @category = Category.create! name: "Apparel"

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset("apparel1.jpg"),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They see number of items in cart" do
    visit root_path
    page.find("[data-test-id=cart-btn]").click
    expect(page).to have_css("[data-test-id=cart-btn]")
    save_screenshot "items_cart.png"
  end

end
