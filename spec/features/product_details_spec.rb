require "rails_helper"
require "faker"

RSpec.feature "Product details", type: :feature, js: true do

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

  scenario "They see product details" do
    visit root_path
    page.all("article.product")[0].all('a')[0].click
    expect(page).to have_css(".products-show .page-header h1")
    save_screenshot "product_details.png"
  end

end
