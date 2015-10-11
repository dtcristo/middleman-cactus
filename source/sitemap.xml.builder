xml.instruct!
xml.urlset xmlns: 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  sitemap.resources.select { |page| page.destination_path =~ /\.html/ }.each do |page|
    xml.url do
      xml.loc URI.join(site_url, page.url)
      xml.lastmod Date.today.to_time.iso8601
      xml.changefreq page.data.changefreq || 'weekly'
    end
  end
end
