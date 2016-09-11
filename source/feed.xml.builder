site_url = config[:site_url]
site_author = config[:site_author]
site_updated = Time.parse('2000-01-01 00:00:00')
blog.articles.each do |article|
  article_updated = article.mtime
  if article_updated > site_updated
    site_updated = article_updated
  end
end

xml.instruct!
xml.feed xmlns: 'http://www.w3.org/2005/Atom' do
  xml.title config[:site_title]
  xml.subtitle config[:site_subtitle]
  xml.link href: URI.join(site_url, current_page.path), rel: 'self'
  xml.link href: URI.join(site_url, blog.options.prefix.to_s)
  xml.id config[:site_id]
  xml.updated site_updated.iso8601
  xml.author { xml.name site_author }
  xml.rights "© #{site_author} #{Time.now.year}"

  blog.articles.each do |article|
    xml.entry do
      xml.title article.title
      xml.link href: URI.join(site_url, article.url), rel: 'alternate'
      xml.id article.metadata[:page][:id]
      xml.published article.date.to_time.iso8601
      xml.updated article.mtime.iso8601
      xml.author { xml.name site_author }
      # xml.summary article.summary, type: 'html'
      xml.content article.body, type: 'html'
    end
  end
end
