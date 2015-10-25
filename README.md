# Middleman Cactus

A port of the default theme from [Cactus](https://cactusformac.com/) for the [Middleman](https://middlemanapp.com/) static site generator. Based off [nickbalestra/kactus](https://github.com/nickbalestra/kactus), a port of the same theme for Jekyll.

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
# Site Settings
###
set :site_url, 'http://example.com/'
set :site_title, 'Site Title'
set :site_subtitle, 'This is the site subtitle'
set :profile_text, %q(Pitchfork kogi forage, gluten-free pour-over drinking vinegar Etsy narwhal next level shabby chic bicycle rights tofu mustache scenester. Intelligentsia Brooklyn mumblecore, church-key meggings cardigan quinoa gluten-free banjo. Polaroid beard 8-bit, lumbersexual photo booth forage bitters mustache drinking vinegar biodiesel cardigan. Four loko raw denim polaroid selfies, mixtape skateboard lumbersexual. Odd Future Blue Bottle bicycle rights Etsy. Etsy Odd Future normcore, deep v Shoreditch seitan sustainable yr heirloom Brooklyn try-hard stumptown Bushwick cornhole. Portland chillwave pug Tumblr deep v readymade.)
set :site_author, 'Site Author'
set :twitter_username, 'example'
set :disqus_shortname, 'example'
set :google_analytics, 'XX-XXXXXXXX-X'
```

Start the Middleman server:

    $ middleman server

Site should be live at [http://localhost:4567](http://localhost:4567).

For more information read the [middleman-blog](https://middlemanapp.com/basics/blogging/) documentation.
