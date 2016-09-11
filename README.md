# Middleman Cactus

A port of the default theme from [Cactus](http://cactusformac.com/) for the [Middleman](https://middlemanapp.com/) static site generator. Based on [nickbalestra/kactus](https://github.com/nickbalestra/kactus), a port of the same theme for Jekyll.

## Installation

Install Middleman:

    $ gem install middleman

Create a new site from the project template:

    $ mkdir my-site
    $ cd my-site
    $ middleman init -T dtcristo/middleman-cactus

Update the following site configuration settings in `config.rb`:

```ruby
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
```

Start the Middleman server:

    $ middleman server

Site should be live at [http://localhost:4567/](http://localhost:4567/).

When adding blog articles, you must include `id` frontmatter. Generate an ID by running `rake id`.

For more information read the [middleman-blog](https://middlemanapp.com/basics/blogging/) documentation.
