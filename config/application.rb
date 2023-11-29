require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PruebaNet
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.after_initialize do
      unless Article.exists?
        datos = RecursoExterno.conseguir_datos["articles"]

        20.times do |i|
          Article.new(
            author: datos[i]["author"],
            title: datos[i]["title"],
            description: datos[i]["description"],
            url_to_image: datos[i]["url_to_image"]
          ).save
        end
      end
    end
  end
end
