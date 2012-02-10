require 'google_auth/version'
require 'google_auth/engine'
require 'google_auth/controller'

module GoogleAuth

  def self.domain
    Rails.application.config.google_auth.domain or
      raise "domain missing! Add config.google_auth.domain to an initializer."
  end

  def self.path
    Rails.application.config.google_auth.path or
      'g'
  end

  def self.user_class
    klass = Rails.application.config.google_auth.path
    return klass if klass

    begin
      User
    rescue
      raise "User class not found! Add config.google_auth.user_class to an initializer."
    end
  end

end
