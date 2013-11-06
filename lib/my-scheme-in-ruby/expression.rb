module MySchemeInRuby  
  class Expression
    attr_reader :value

    def initialize(expression)
      @value = expression
    end

    def cons(a, b)
    end

    def car
      if self.is_list?
        Expression.new(@value[0])
      else
        self
      end
    end

    def cdr
      if self.is_list?
        Expression.new(@value[1..-1])
      else
        self
      end
    end

    def return_list(*list)
      Expression.new(list)
    end

    ## bools
    def is_list?
      @value.is_a?(Array)
    end

    def is_immediate_val?
      is_num?
    end
    
    def is_special_form?
      self.is_lambda? or       
        self.is_let? or
        self.is_letrec? or
        self.is_if?
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

    def is_if?
      @value[0] == :if
    end
    
    private
    def is_num?
      @value.is_a?(Numeric)
    end
  end
end
