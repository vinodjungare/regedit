require 'spec_helper'
describe 'regedit' do
  context 'with default values for all parameters' do
    it { should contain_class('regedit') }
  end
end
