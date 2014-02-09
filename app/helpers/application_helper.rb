module ApplicationHelper
  def flash_messages
    FlashRenderer.new(flash, self).render
  end
end
