require 'rails'
require 'nivo_slider/assert_select' if ::Rails.env.test?
require 'nivo_slider/rails/engine' if ::Rails.version >= '3.1'
require 'nivo_slider/rails/railtie'
module NivoSlider
  module Rails
  end
end
