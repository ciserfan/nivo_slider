#nivo_slider

nivo_slider gem is most beautiful and easy to use image slider on the market. There is literally no better way to make your website look totally stunning. There is literally no better way to make your website look totally stunning. 

## Setup

Add the gem to your Gemfile and run the `bundle` command to install it.

```ruby
gem "nivo_slider"
```

Run the generator to create the initial files.

```
rails g nivo_slider:install
```
**In Rails 3.1** add the JavaScript file to your application.js file manifest. 

```javascript
//= require jquery.nivo.slider
```
OR
```javascript
//= require jquery.nivo.slider.pack
```

Add the following line to your application.css file.

```css
  *= require nivo-slider
  *= require nivo_default
```


**In Rails 3.0** add the generated nivo_slider file to your layout.

```rhtml
<%= javascript_include_tag "nivo_slider" %>
```

## Usage

Add the below code in your view wherever you want the scroll:
```rhtml
<div id="slider" class="nivoSlider">
    <img src="images/toystory.jpg" data-thumb="images/toystory.jpg" alt="" />
    <a href="http://dev7studios.com"><img src="images/up.jpg" data-thumb="images/up.jpg" alt="" title="This is an example of a caption" /></a>
    <img src="images/walle.jpg" data-thumb="images/walle.jpg" alt="" data-transition="slideInLeft" />
    <img src="images/nemo.jpg" data-thumb="images/nemo.jpg" alt="" title="#htmlcaption" />
</div>
<div id="htmlcaption" class="nivo-html-caption">
    <strong>This</strong> is an example of a <em>HTML</em> caption with <a href="#">a link</a>. 
</div>
```
Add the javascript code:

```Javascript
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
```


## Development & Feedback

Questions or comments? Please use the [issue tracker](https://github.com/ciserfan/nivo_slider/issues). Tests can be run with `bundle` and `rake` commands.

## Reference Site

For more information you can refer to following site:

<a href="http://dev7studios.com/plugins/nivo-slider/">nivo-slider</a>
