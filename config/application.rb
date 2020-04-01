require_relative 'boot'

require 'rails/all'
require "action_controller/railtie"
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DevPortfolio
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.action_controller.permit_all_parameters = true
  end
end
