require 'spec_helper'

describe ApplicationHelper do
  describe '#flash_messages' do
    it 'returns an empty string when no flash is present' do
      expect(flash_messages).to eq("")
    end

    it "returns an string which include the flash message" do
      flash[:success] = "Example"
      expect(flash_messages).to match(/Example/)
    end
  end
end
