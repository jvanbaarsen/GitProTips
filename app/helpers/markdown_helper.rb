module MarkdownHelper
  def markdown text
    gitprotips_renderer =  Redcarpet::Render::GitprotipsHTML.new({
                            # see https://github.com/vmg/redcarpet#darling-i-packed-you-a-couple-renderers-for-lunch-
                            filter_html: true,
                            with_toc_data: true,
                            hard_wrap: true,
                            safe_links_only: true
                          })
    @markdown ||= Redcarpet::Markdown.new(
      gitprotips_renderer,
      autolink: true,
      space_after_headers: true,
      hard_wrap: true,
      disable_indented_code_blocks: true,
      fenced_code_blocks: true
    )
    @markdown.render(text).html_safe
  end
end
