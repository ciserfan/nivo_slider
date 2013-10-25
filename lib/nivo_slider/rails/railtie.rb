# Used to ensure that Rails 3.0.x, as well as Rails >= 3.1 with asset pipeline disabled
# get the minified version of the scripts included into the layout in production.
module NivoSlider
  module Rails
    class Railtie < ::Rails::Railtie
      config.before_configuration do
        if config.action_view.javascript_expansions
          nivo_slider_defaults = ::Rails.env.production? || ::Rails.env.test? ? %w(jquery.nivo.slider.pack) : %w(jquery.nivo.slider)
        end
      end
    end
  end
end
