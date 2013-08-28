require_relative './spec_helper'
require 'my-scheme-in-ruby/expression'

describe 'Expression' do
  before :all do
  end

  it '[:+, 1, 2] is list' do
    exp = MySchemeInRuby::Expression.new([:+, 1, 2])
    exp.is_list?
  end
end
