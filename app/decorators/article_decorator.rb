module ArticleDecorator
  def btn_to
    view.link_to :discover, article, class: :btn
  end
end
