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
      car_exp = exp.car

      it 'returns Expression Obj' do
        expect(car_exp.class).to eq MySchemeInRuby::Expression
      end

      it 'and its value is :+' do
        expect(car_exp.value).to eq :+
      end
    end

    describe 'Expression#cdr' do
      cdr_exp = exp.cdr

      it 'returns Expression Obj' do
        expect(cdr_exp.class).to eq MySchemeInRuby::Expression
      end

      it 'and its value is [1,2]' do
        expect(cdr_exp.value).to eq [1, 2]
      end
    end
    
    describe 'Expression#is_immediate_val?' do
      it 'returns false' do
        expect(exp.is_immediate_val?).to eq false        
      end
    end        

    describe 'Expression#return_list(exp.value)' do
      new_exp = exp.return_list(exp.value)
      it 'returns Expression Obj' do
        expect(new_exp.class).to eq MySchemeInRuby::Expression
      end

      it 'and its value is [exp.value]' do
        expect(new_exp.value).to eq [exp.value]
      end
    end
    
  end

  context 'when Expression is :prim' do
    exp = MySchemeInRuby::Expression.new(:prim)
    
    describe 'Expression#is_list?' do
      it 'returns false' do
        expect(exp.is_list?).to eq false
      end
    end

    describe 'Expression#car' do
      it 'returns :prim' do
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

    describe 'Expression#return_list(exp.value)' do
      new_exp = exp.return_list(exp.value)
      it 'returns Expression Obj' do
        expect(new_exp.class).to eq MySchemeInRuby::Expression
      end

      it 'and its value is [exp.value]' do
        expect(new_exp.value).to eq [exp.value]
      end
    end    
  end
end
