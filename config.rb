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

helpers do
  # Builds a page title from the article title + site title
  def page_title
    if current_article && current_article.title
      current_article.title + ' | ' + config[:site_title]
    else
      config[:site_title]
    end
  end
  # Renders component partials
  def component(path, locals={})
    partial "components/#{path}", locals
  end
end

activate :blog do |blog|
  blog.permalink = '{title}'
  # Matcher for blog source files
  blog.sources = 'articles/{year}-{month}-{day}-{title}.html'
  blog.layout = 'article'
  blog.default_extension = '.md'
end

# Markdown and syntax highlighting
activate :syntax
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, smartypants: true

# Use commit time from git for sitemap.xml and feed.xml
activate :vcs_time

###
# Site settings
###
set :site_url, 'http://example.com/'
set :site_title, 'Site title'
set :site_subtitle, 'This is the site subtitle'
set :profile_text, %q(Pitchfork kogi forage, gluten-free pour-over drinking vinegar Etsy narwhal next level shabby chic bicycle rights tofu mustache scenester. Intelligentsia Brooklyn mumblecore, church-key meggings cardigan quinoa gluten-free banjo. Polaroid beard 8-bit, lumbersexual photo booth forage bitters mustache drinking vinegar biodiesel cardigan. Four loko raw denim polaroid selfies, mixtape skateboard lumbersexual. Odd Future Blue Bottle bicycle rights Etsy. Etsy Odd Future normcore, deep v Shoreditch seitan sustainable yr heirloom Brooklyn try-hard stumptown Bushwick cornhole. Portland chillwave pug Tumblr deep v readymade.)
set :site_author, 'Joe Bloggs'
# Generate your own by running `rake id`
set :site_id, 'urn:uuid:b8261ce6-4d49-4afa-9d16-643631ab5afc'

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

###
# Environment settings
###
# Development-specific configuration
configure :development do
  # Reload the browser automatically whenever files change
  # activate :livereload
end

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html

  # Improve cacheability by using asset hashes in filenames
  activate :asset_hash
end
