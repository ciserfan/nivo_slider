require 'rails'

# Supply generator for Rails 3.0.x or if asset pipeline is not enabled
if ::Rails.version < "3.1" 
  module NivoSlider
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "This generator installs Nivo slider"
        source_root File.expand_path('../../../../../vendor/assets/', __FILE__)
        def copy_nivo_slider
          say_status("copying", "nivo_slider", :green)
          copy_file "javascripts/jquery.nivo.slider.js", "public/javascripts/jquery.nivo.slider.js"
          copy_file "javascripts/jquery.nivo.slider.pack.js", "public/javascripts/jquery.nivo.slider.pack.js"
          copy_file "stylesheets/nivo-slider.css", "public/stylesheets/nivo-slider.css"
          copy_file "stylesheets/nivo_default.css", "public/stylesheets/nivo_default.css"
          copy_file "images/arrows.png", "public/images/arrows.png"
          copy_file "images/bullets.png", "public/images/bullets.png"
          copy_file "images/loading.gif", "public/images/loading.gif"
         end
      end
    end
  end
else
  module NivoSlider
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "This generator add nivo slider  to application.js or application.js.coffee"
        source_root File.expand_path('../../../../../vendor/assets/', __FILE__)
      
        def add_assets
        copy_file "images/arrows.png", "app/assets/images/arrows.png"
        copy_file "images/bullets.png", "app/assets/images/bullets.png"
        copy_file "images/loading.gif", "app/assets/images/loading.gif"
        def add_assets
        js_manifest = 'app/assets/javascripts/application.js'
        if File.exist?(js_manifest)
          insert_into_file js_manifest, "//= require jquery.nivo.slider\n", :after => "jquery_ujs\n"
        else
          copy_file "application.js", js_manifest
        end
        css_manifest = 'app/assets/stylesheets/application.css'
        if File.exist?(css_manifest)
          # Add our own require:
          content = File.read(css_manifest)
          insert_into_file css_manifest, " *= require nivo_default\n", :after => "require_self\n"
          insert_into_file css_manifest, " *= require nivo-slider\n", :after => "require_self\n"
         
        else
          copy_file "application.css", "app/assets/stylesheets/application.css"
        end

      end
        def detect_js_format
          return ['.js.coffee', '#='] if File.exist?('app/assets/javascripts/application.js.coffee')
          return ['.js', '//='] if File.exist?('app/assets/javascripts/application.js')
        end
      end
    end
  end
end
