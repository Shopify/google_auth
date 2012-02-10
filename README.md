# GoogleAuth

## What

GoogleAuth is a convenience wrapper around `omniauth-google-apps` that
makes a lot of assumptions, and requires less setup.

## How

    # Gemfile
    gem 'google_auth'

    # config/initializers/google_auth.rb
    Rails.application.config.google_auth.domain = 'yourgoogleappsdomain.com'
    # other options: 'user_class', 'path'. See source for details.

    # Whichever controller you want behind the login-wall
    include GoogleAuth::Controller

