module NRB; module Fake
  class FakePackageTypeParser
    include NRB::Support::PackageTypeParser
  end

  class FakeType
    def initialize(name); end
  end
end; end

describe NRB::Support::PackageTypeParser do

  let(:package_type_string) { '1/2BBL' }
  let(:type_class) { NRB::Fake::FakeType }
  let(:parser_class) { NRB::Fake::FakePackageTypeParser }
  let(:subject) { parser_class.new }

  it 'adds a :parse_package_type method' do
    expect(subject).to respond_to(:parse_package_type)
  end


  it 'returns a String by default' do
    expect(subject.parse_package_type(package_type_string)).to be_a String
  end


  it 'ruturns a class of your choice' do
    expect(subject.parse_package_type(package_type_string, type_class: type_class)).to be_a(type_class)
  end

end
