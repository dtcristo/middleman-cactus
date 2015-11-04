###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml',  layout: false
page '/*.json', layout: false
page '/*.txt',  layout: false

# Disable directory_index for 404 page
page '/404.html', directory_index: false

###
# Helpers and extensions
###

# Time.zone = 'UTC'

activate :blog do |blog|
  blog.permalink = '{title}'
  # Matcher for blog source files
  blog.sources = 'articles/{year}-{month}-{day}-{title}.html'
  blog.layout = 'article'
  blog.default_extension = '.md'
end

# Pretty URLs (https://middlemanapp.com/advanced/pretty_urls/)
activate :directory_indexes
set :trailing_slash, false

# Markdown and syntax highlighting
activate :syntax
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, smartypants: true

###
# Site settings
###
set :site_url, 'http://example.com/'
set :site_title, 'Site title'
set :site_subtitle, 'This is the site subtitle'
set :profile_text, %q(Pitchfork kogi forage, gluten-free pour-over drinking vinegar Etsy narwhal next level shabby chic bicycle rights tofu mustache scenester. Intelligentsia Brooklyn mumblecore, church-key meggings cardigan quinoa gluten-free banjo. Polaroid beard 8-bit, lumbersexual photo booth forage bitters mustache drinking vinegar biodiesel cardigan. Four loko raw denim polaroid selfies, mixtape skateboard lumbersexual. Odd Future Blue Bottle bicycle rights Etsy. Etsy Odd Future normcore, deep v Shoreditch seitan sustainable yr heirloom Brooklyn try-hard stumptown Bushwick cornhole. Portland chillwave pug Tumblr deep v readymade.)
set :site_author, 'Joe Bloggs'

# Usernames
set :github_username, 'example'
set :keybase_username, 'example'
set :twitter_username, 'example'
set :linkedin_username, 'example'
set :lastfm_username, 'example'
set :spotify_username, 'example'

# Replace 'nil' with your Disqus shortname, eg. 'example'
set :disqus_shortname, nil
# Replace 'nil' with your Google Analytics key, eg. 'XX-XXXXXXXX-X'
set :google_analytics, nil

# Custom asset directories
set :partials_dir, 'partials'

# Development-specific configuration
configure :development do
  # Reload the browser automatically whenever files change
  # activate :livereload
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify JavaScript on build
  activate :minify_javascript
end
