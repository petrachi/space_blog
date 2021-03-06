require File.expand_path('../boot', __FILE__)

%w(
  active_record
  action_controller
  action_view
  sprockets
).each do |framework|
  require "#{framework}/railtie"
end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SpaceBlog
  class Application < Rails::Application
  end
end
