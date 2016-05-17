require_relative 'boot'

require 'rails/all'
require_relative '../lib/npm_directive_processor'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SprocketsNpmRailsExample
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Register the (JavaScript) NPM Processor Directive with Sprockets
    processor = NpmDirectiveProcessor.new(comments: ['//'])
    Sprockets.register_preprocessor 'application/javascript', processor
  end
end
