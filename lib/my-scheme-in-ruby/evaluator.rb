module MySchemeInRuby  
  class Evaluator
    attr_accessor :exp,:env

    def initialize(exp, env)
      @exp = exp
      @env = env
    end

    def _eval
      if not @exp.is_list?
        if @exp.is_immediate_val?
          exp.value
        else
          lookup_var(@exp, @env)      
        end
      else
        if @exp.is_special_form?
          eval_special_form(@exp, @env)
        else
          fun = _eval(@exp.car,@env)
          args = eval_list(@exp.cdr,@env)
          apply(fun, args)
        end
      end      
    end

    private
    def eval_list
      @exp.value.map{|e| _eval(Expression.new(e), @env)}
    end

    def eval_let
      parameters, args, body = let_to_parameters_args_body(@exp)
      new_exp = [[:lambda, parameters, body]] +args
      _eval(Expression.new(new_exp), env)
    end
  end
end
