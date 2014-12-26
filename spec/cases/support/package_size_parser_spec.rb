require 'spec_helper'

module NRB; module Fake
  class FakePackageSizeParser
    include NRB::Support::PackageSizeParser
  end

  class FakeSize
    def initialize(name); end
  end
end; end

describe NRB::Support::PackageSizeParser do

  let(:package_size_string) { '1/2BBL' }
  let(:size_class) { NRB::Fake::FakeSize }
  let(:parser_class) { NRB::Fake::FakePackageSizeParser }
  let(:subject) { parser_class.new }

  it 'adds a :parse_package_size method' do
    expect(subject).to respond_to(:parse_package_size)
  end


  it 'returns a RubyUnits::Unit by default' do
    expect(subject.parse_package_size(package_size_string).class).to eq RubyUnits::Unit
  end


  it 'ruturns a class of your choice' do
    expect(subject.parse_package_size(package_size_string, size_class: size_class)).to be_a(size_class)
  end

end
