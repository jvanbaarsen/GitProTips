require 'spec_helper'

describe Tip do
  describe 'Fields' do
    it {should respond_to :title }
    it {should respond_to :content }
  end

  describe 'Validations' do
    it {should validate_presence_of :title }
    it {should validate_presence_of :content }
  end
end
