require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SpaceBlog
  class Application < Rails::Application

    RKit.load :active_record_utilities, :css, :decorator, :grid
  end
end
