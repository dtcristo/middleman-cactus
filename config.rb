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
  # blog.prefix = 'blog'

  blog.permalink = '{title}'
  # Matcher for blog source files
  blog.sources = 'articles/{year}-{month}-{day}-{title}.html'
  # blog.taglink = 'tags/{tag}.html'
  blog.layout = 'article'
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = '{year}.html'
  # blog.month_link = '{year}/{month}.html'
  # blog.day_link = '{year}/{month}/{day}.html'
  blog.default_extension = '.md'

  # blog.tag_template = 'tag.html'
  # blog.calendar_template = 'calendar.html'

  # Enable pagination
  # blog.paginate = true
  # blog.per_page = 5
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

###
# Site Settings
###
set :site_url, 'http://example.com/'
set :site_title, 'Site Title'
set :site_subtitle, 'This is the site subtitle'
set :profile_text, %q(Pitchfork kogi forage, gluten-free pour-over drinking vinegar Etsy narwhal next level shabby chic bicycle rights tofu mustache scenester. Intelligentsia Brooklyn mumblecore, church-key meggings cardigan quinoa gluten-free banjo. Polaroid beard 8-bit, lumbersexual photo booth forage bitters mustache drinking vinegar biodiesel cardigan. Four loko raw denim polaroid selfies, mixtape skateboard lumbersexual. Odd Future Blue Bottle bicycle rights Etsy. Etsy Odd Future normcore, deep v Shoreditch seitan sustainable yr heirloom Brooklyn try-hard stumptown Bushwick cornhole. Portland chillwave pug Tumblr deep v readymade.)
set :site_author, 'Site Author'

# Usernames
set :github_username, 'example'
set :keybase_username, 'example'
set :twitter_username, 'example'
set :linkedin_username, 'example'
set :lastfm_username, 'example'
set :spotify_username, 'example'

set :disqus_shortname, 'example'
set :google_analytics, 'XX-XXXXXXXX-X'

# Asset directories
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :layouts_dir, 'layouts'
set :partials_dir, 'partials'
set :helpers_dir, 'helpers'

# Markdown and syntax highlighting
activate :syntax
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, smartypants: true

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript
end
