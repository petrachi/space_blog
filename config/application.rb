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
    RKit.load :utilities, :active_record_utilities, :backtrace, :css, :decoration, :grid, :pagination, :dsl, :struct, :override, :frame, :parser
  end
end
