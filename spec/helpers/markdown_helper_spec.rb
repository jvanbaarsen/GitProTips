require 'spec_helper'

describe MarkdownHelper do
  describe '#markdown' do
    it 'returns a html formatted string' do
      string = 'hi **bold** *italic*'
      expect(markdown(string)).to eq("<p>hi <strong>bold</strong> <em>italic</em></p>\n")
    end
  end
end
