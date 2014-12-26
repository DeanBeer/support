require 'spec_helper'

module NRB; module Fake
  class FakeBrandNameParser
    include NRB::Support::BrandNameParser
  end

  class FakeBrand
    def initialize(name)
      @name = name
    end
  end
end; end

describe NRB::Support::BrandNameParser do

  let(:brand_name_string) { '' }
  let(:brand_class) { NRB::Fake::FakeBrand }
  let(:parser_class) { NRB::Fake::FakeBrandNameParser }
  let(:subject) { parser_class.new }

  it 'has a brands_with_expressions class-level getter' do
    expect(parser_class).to respond_to(:brands_with_expressions)
  end


  it 'has a brands_with_expressions class-level writer' do
    expect(parser_class).to respond_to(:brands_with_expressions=)
  end


  it 'adds a :parse_brand_name method' do
    expect(subject).to respond_to(:parse_brand_name)
  end


  it 'returns a string by default' do
    expect(subject.parse_brand_name(brand_name_string)).to be_a String
  end


  it 'ruturns a class of your choice' do
    expect(subject.parse_brand_name(brand_name_string, brand_class: brand_class)).to be_a(brand_class)
  end

end
