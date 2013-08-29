require_relative './spec_helper'
require 'my-scheme-in-ruby/expression'

describe MySchemeInRuby::Expression do
  context 'when Expression is [:+, 1, 2]' do
    exp = MySchemeInRuby::Expression.new([:+, 1, 2])
    
    describe 'Expression#is_list?' do
      it 'returns true' do
        expect(exp.is_list?).to eq true
      end
    end

    describe 'Expression#car' do
      it 'returns :+' do
        expect(exp.car).to eq :+
      end
    end

    describe 'Expression#cdr' do
      it 'returns [1,2]' do
        expect(exp.cdr).to eq [1, 2]
      end
    end
    
    describe 'Expression#is_immediate_val?' do
      it 'returns false' do
        expect(exp.is_immediate_val?).to eq false        
      end
    end        
  end
end
