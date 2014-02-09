require 'spec_helper'

describe MarkdownHelper do
  describe '#markdown' do
    it 'returns a html formatted string' do
      string = 'hi **bold** *italic*'
      expect(markdown(string)).to eq("<p>hi <strong>bold</strong> <em>italic</em></p>\n")
    end

    it 'parsed fenced code blocks' do
      string = %Q{This is some text
```
this is a code block
```
      }

      result = %Q{<p>This is some text\n<code>\nthis is a code block\n</code></p>\n}
      expect(markdown(string)).to eq(result)
    end
  end
end
