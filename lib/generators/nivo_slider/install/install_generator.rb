require 'rails'
module NivoSlider
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "This generator installs nivo slider"
      source_root File.expand_path('../../../../../vendor/assets/', __FILE__)
       def copy_files
        if ::Rails.version < "3.1"
          copy_file "javascripts/jquery.nivo.slider.js", "public/javascripts/jquery.nivo.slider.js"
          copy_file "javascripts/jquery.nivo.slider.pack.js", "public/javascripts/jquery.nivo.slider.pack.js"
          copy_file "stylesheets/nivo-slider.css", "public/stylesheets/nivo-slider.css"
          copy_file "stylesheets/nivo_default.css", "public/stylesheets/nivo_default.css"
          copy_file "images/arrows.png", "public/images/arrows.png"
          copy_file "images/bullets.png", "public/images/bullets.png"
          copy_file "images/loading.gif", "public/images/loading.gif"
        else
          copy_file "javascripts/jquery.nivo.slider.js", "app/assets/javascripts/jquery.nivo.slider.js"
          copy_file "javascripts/jquery.nivo.slider.pack.js", "app/assets/javascripts/jquery.nivo.slider.pack.js"
          copy_file "stylesheets/nivo-slider.css", "app/assets/stylesheets/nivo-slider.css"
          copy_file "stylesheets/nivo_default.css", "app/assets/stylesheets/nivo_default.css"
          copy_file "images/arrows.png", "app/assets/images/arrows.png"
          copy_file "images/bullets.png", "app/assets/images/bullets.png"
          copy_file "images/loading.gif", "app/assets/images/loading.gif"
        end
     end
    end
  end
end
