# Jungle Project by Ryota Mine

Jungle is a mini e-commerce application built with Ruby on Rails, ERB, PostgreSQL, Stripe, and RSpec for purposes of teaching Rails by example.

## Final Product

!["Screenshot of home page 1"](https://github.com/ryotamine/jungle-rails/blob/master/docs/home-page-1.png)
!["Screenshot of home page 2"](https://github.com/ryotamine/jungle-rails/blob/master/docs/home-page-2.png)
!["Screenshot of home page 3"](https://github.com/ryotamine/jungle-rails/blob/master/docs/home-page-3.png)
!["Screenshot of product"](https://github.com/ryotamine/jungle-rails-testing/blob/master/docs/product.png)
!["Screenshot of checkout"](https://github.com/ryotamine/jungle-rails-testing/blob/master/docs/checkout.png)

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL
- Stripe
- RSpec

## Getting Started

 1. Fork and clone.
 2. Run `bundle install` to install dependencies.
 3. Create `config/database.yml` by copying `config/database.example.yml`.
 4. Create `config/secrets.yml` by copying `config/secrets.example.yml`.
 5. Run `bin/rake db:reset` to create, load, and seed db.
 6. Create .env file based on .env.example.
 7. Sign up for a Stripe account.
 8. Put Stripe (test) keys into appropriate .env vars.
 9. Run `bin/rails s -b 0.0.0.0` to start the server.
10. Go to <http://localhost:3000/> in your browser.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>
