require 'spec_helper'

describe Anima::Error, '#message' do
  let(:object) { error.new(instance, name) }

  let(:error) do
    Class.new(described_class) do
      def self.name
        'TestError'
      end
    end
  end

  subject { object.message }

  let(:instance) { Object.new }
  let(:name)     { 'foo' }

  it 'should return the message string' do
    should eql('TestError attribute(s) "foo" for Object')
  end

  it_should_behave_like 'an idempotent method'
end
