require 'spec_helper'

describe 'surround' do
  ############### Test normal usage

  describe 'when a string is surrounded' do
    it 'should have the prefix and suffix added' do
      should run.with_params('llo wor', 'he', 'ld').and_return(/^hello world$/)
    end
  end

  describe 'when an array is surrounded' do
    it 'should have the prefix and suffix added to each element' do
      should run.with_params(%w(a b c), '+', '+').and_return(['+a+', '+b+', '+c+'])
    end
  end

  ############### Test exceptions

  describe 'when called incorrectly' do
    it 'should throw an ArgumentError unless called with 3 arguments' do
      expect { subject.call(['foo']) }.to raise_error(ArgumentError)
    end

    it 'should throw an ArgumentError if called with a hash' do
      expect { subject.call([{ 'foo' => 'bar' }, '+', '+']) }.to raise_error(ArgumentError)
    end
  end
end
