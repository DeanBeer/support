require 'spec_helper'

module NRB; module Fake
  class FakePackageVolumeParser
    include NRB::Support::PackageVolumeParser
  end

  class FakeVolume
    def initialize(name); end
  end
end; end

describe NRB::Support::PackageVolumeParser do

  let(:package_volume_string) { '1/2BBL' }
  let(:volume_class) { NRB::Fake::FakeVolume }
  let(:parser_class) { NRB::Fake::FakePackageVolumeParser }
  let(:subject) { parser_class.new }

  it 'adds a :parse_package_volume method' do
    expect(subject).to respond_to(:parse_package_volume)
  end


  it 'returns a RubyUnits::Unit by default' do
    expect(subject.parse_package_volume(package_volume_string).class).to eq RubyUnits::Unit
  end


  it 'ruturns a class of your choice' do
    expect(subject.parse_package_volume(package_volume_string, volume_class: volume_class)).to be_a(volume_class)
  end

end
