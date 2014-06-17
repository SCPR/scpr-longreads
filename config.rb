require "slim"
activate :bourbon
activate :directory_indexes
activate :livereload

###
# Compass
###

# Susy grids in Compass
# First: gem install susy
# require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
helpers do
  def page_title(subtitle = nil, separator = ' | ')
    if current_page.data.subtitle
      @full_title = current_page.data.title + ": " + current_page.data.subtitle
    else
      @full_title = current_page.data.title
    end
    
    [@full_title, "89.3 KPCC"].compact.join(separator)
  end
end

# Set slim-lang output style
Slim::Engine.set_default_options :pretty => true

# Enable Slim templates to use frontmatter
set :frontmatter_extensions, %w(.html .slim)

set :partials_dir, 'partials'

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Add path to Bower components directory
after_configuration do
 sprockets.append_path File.join "#{root}", "components"
end

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end