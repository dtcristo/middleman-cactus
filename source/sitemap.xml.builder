xml.instruct!
xml.urlset xmlns: 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  sitemap.resources.each do |resource|
    xml.url do
      xml.loc URI.join(site_url, resource.url)
      xml.lastmod File.mtime(resource.source_file).strftime('%Y-%m-%d')
      priority = if resource.url == '/'
                   1.0
                 else
                   (1.0 - resource.url.count('/') * 0.1).round(1).to_s
                 end
      xml.priority priority
      xml.changefreq resource.data.changefreq || 'weekly'
    end if resource.destination_path =~ /\.html$/
  end
end
