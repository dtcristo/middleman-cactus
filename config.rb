###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy '/this-page-has-no-template.html', '/template-file.html', locals: {
#  which_fake_page: 'Rendering a fake page with a local variable' }

###
# Helpers
###

# Time.zone = 'UTC'

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  blog.prefix = 'blog'

  blog.permalink = '{title}'
  # Matcher for blog source files
  blog.sources = '{year}-{month}-{day}-{title}'
  # blog.taglink = 'tags/{tag}.html'
  blog.layout = 'article'
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = '{year}.html'
  # blog.month_link = '{year}/{month}.html'
  # blog.day_link = '{year}/{month}/{day}.html'
  blog.default_extension = '.md'

  blog.tag_template = 'tag.html'
  # blog.calendar_template = 'calendar.html'

  # Enable pagination
  blog.paginate = true
  blog.per_page = 5
  # blog.page_link = 'page/{num}'
end

# Pretty URLs (https://middlemanapp.com/advanced/pretty_urls/)
activate :directory_indexes
set :trailing_slash, false

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     'Helping'
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :layouts_dir, 'layouts'

set :partials_dir, 'partials'

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
