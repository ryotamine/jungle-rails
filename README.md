# Jungle Project by Ryota Mine

Jungle is a mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Final Product

!["Screenshot of home page 1"](https://github.com/ryotamine/jungle-rails/blob/master/docs/home-page-1.png)
!["Screenshot of home page 2"](https://github.com/ryotamine/jungle-rails/blob/master/docs/home-page-2.png)
!["Screenshot of home page 3"](https://github.com/ryotamine/jungle-rails/blob/master/docs/home-page-3.png)
!["Screenshot of product"](https://github.com/ryotamine/jungle-rails/blob/master/docs/product.png)
!["Screenshot of checkout"](https://github.com/ryotamine/jungle-rails/blob/master/docs/checkout.png)

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe

## Getting Started

1. Run `bundle install` to install dependencies.
2. Create `config/database.yml` by copying `config/database.example.yml`.
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`.
4. Run `bin/rake db:reset` to create, load and seed db.
5. Create .env file based on .env.example.
6. Sign up for a Stripe account.
7. Put Stripe (test) keys into appropriate .env vars.
8. Run `bin/rails s -b 0.0.0.0` to start the server.
9. Go to <http://localhost:3000/> in your browser.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>