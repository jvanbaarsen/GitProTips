class Redcarpet::Render::GitprotipsHTML < Redcarpet::Render::HTML

  def initialize(options = {})
    @options = options.dup
    super options
  end

  def block_code(code, language)
    # New lines are placed to fix an rendering issue
    # with code wrapped inside <h1> tag for next case:
    #
    # # Title kinda h1
    #
    #     ruby code here
    #
    <<-HTML

<div class="highlight">
  <pre><code class="#{language}">#{code}</code></pre>
</div>

    HTML
  end
end
