class ScreencastDecorator
  def btn_to
    view.link_to :watch, screencast, class: :btn
  end
end
