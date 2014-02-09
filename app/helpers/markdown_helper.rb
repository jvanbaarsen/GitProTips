module MarkdownHelper
  def markdown text
    @markdown ||= Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      autolink: true,
      space_after_headers: true,
      hard_wrap: true,
      disable_indented_code_blocks: true,
      fenced_code_blocks: true
    )
    @markdown.render(text).html_safe
  end
end
