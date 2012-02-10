# GoogleAuth

## What

GoogleAuth is a convenience wrapper around `omniauth-google-apps` that
makes a lot of assumptions, and requires less setup.

## How

1. Your user model must have the string fields `name`, `email`, and
   `uid`.

2. Add to your Gemfile:

    gem 'google_auth'

3. Create an initializer:

    # config/initializers/google_auth.rb
    Rails.application.config.google_auth.domain = 'yourgoogleappsdomain.com'
    # other options: 'user_class', 'path'. See source for details.

4. Set up whichever controller(s) you want protected:

    include GoogleAuth::Controller

