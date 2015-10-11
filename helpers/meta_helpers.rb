module MetaHelpers
  def page_title
    title = site_title
    if current_article && current_article.title
      title = site_title + ' | ' +  current_article.title
    end
    title
  end

  def page_description
    description = site_description
    if current_article && current_article.summary(100)
      description = current_article.summary(100)
    end
    description
  end
end
