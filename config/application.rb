require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DemoProjectblacklightOrg
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.available_locales = %w(ar ca de en es fr hu it nl pt-BR sq zh)

    config.action_dispatch.rescue_responses.merge!(
      "I18n::InvalidLocale" => :not_found
    )
  end
end
