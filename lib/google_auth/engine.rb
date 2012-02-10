require 'omniauth-google-apps'
require 'openid/store/filesystem'

module GoogleAuth
  class Engine < ::Rails::Engine

    config.google_auth = ActiveSupport::OrderedOptions.new

    initializer 'google_auth' do |app|
      # OpenID.fetcher.ca_file = 'vendor/ca-bundle.crt'
      app.middleware.use OmniAuth::Builder do
        provider :google_apps,
          store: OpenID::Store::Filesystem.new('./tmp'),
          name: GoogleAuth.path,
          domain: GoogleAuth.domain
      end
    end
  end
end
