module MySchemeInRuby  
  class Expression
    attr_reader :value

    def initialize(expression)
      @value = expression
    end

    def cons(a, b)
    end

    def car
      if @value.is_list?
        Expression.new(@value[0])
      else
        @value
      end
    end

    def cdr
      if @value.is_list?
        Expression.new(@value[1..-1])
      else
        @value
      end
    end

    def return_list(*list)
      list
    end

    ## bools
    def is_list?
      @value.is_a?(Array)
    end

    def is_immediate_val?
      @value.is_num?
    end
    
    def is_special_form?
      @value.is_lambda? or       
        @value.is_let? or
        @value.is_letrec? or
        @value.is_if?
    end

    def is_primitive_fun?
      @value[0] == :prim
    end

    def is_lambda?
      @value[0] == :lambda
    end
    
    def is_laterc?
      @value[0] == :letrec 
    end

    def is_let?
      @value[0] == :let
    end

    def is_num?
      @value.is_a?(Numeric)
    end

    def is_if?
      @value[0] == :if
    end
  end
end
