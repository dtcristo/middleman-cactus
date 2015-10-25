module MetaHelpers
  def page_title
    title = site_title
    if current_article && current_article.title
      title = current_article.title + ' | ' + site_title
    end
    title
  end
end
