require_relative './spec_helper'
require 'my-scheme-in-ruby/expression'
describe 'Expression' do
  include MySchemeInRuby
  before :all do
  end

  it 'is list' do
    exp = Expression.new([:+, 1, 2])
    exp.is_list?
  end
end
