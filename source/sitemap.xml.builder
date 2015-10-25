xml.instruct!
xml.urlset xmlns: 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  sitemap.resources.each do |resource|
    if (resource.destination_path =~ /\.html$/) && !resource.data.sitemap_ignore
      xml.url do
        xml.loc URI.join(site_url, resource.url)
        xml.lastmod File.mtime(resource.source_file).strftime('%Y-%m-%d')
        xml.priority resource.data.sitemap_priority || (1.0 - resource.url.count('/') * 0.1).round(1).to_s
        xml.changefreq resource.data.changefreq || 'weekly'
      end
    end
  end
end
