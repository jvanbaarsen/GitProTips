class FlashRenderer
  ALERT_TYPES = [:danger, :info, :success, :warning] unless const_defined?(:ALERT_TYPES)
  def initialize(flashes, template)
    @flashes = flashes
    @template = template
  end

  def render
    flash_messages = []
    @flashes.each do |type, message|
      next if message.blank?
      format_type(type)
      next unless ALERT_TYPES.include?(type)

      Array(message).each do |msg|
        text = content_tag(:div,
                           content_tag(:button, raw("&times;"), :class => "close", "data-dismiss" => "alert") +
                           msg.html_safe, :class => "alert fade in alert-#{type}")
        flash_messages << text if msg
      end
    end
    flash_messages.join("\n").html_safe
  end

  private
  def method_missing(*args, &block)
    @template.send(*args, &block)
  end

  def format_type(type)
    type = :success  if type == :notice
    type = :danger   if type == :alert
    type = :danger   if type == :error
    type
  end
end
