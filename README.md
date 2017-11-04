# Stripe Connect Example (Rails 5)

A simple double-sided marketplace Stripe Connect example.

Get started:

1. Clone repo
2. `bundle`
3. Create .env file with:
```
STRIPE_CLIENT_ID=ca_xxxx
STRIPE_CLIENT_SECRET=sk_test_xxxx
```
4. Set your Redirect URI (Stripe Dashboard > Connect > Settings) to `http://localhost:3000/stripe/connect`
5. `rake db:migrate`
6. `rails s`
