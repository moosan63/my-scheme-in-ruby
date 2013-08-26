module MySchemeInRuby  
  class Evaluator
    attr_accessor :exp,:env
    def initialize(exp, env)
      @exp = exp
      @env = env
    end

    def _eval
      if not list?(@exp)
        if immediate_val?(@exp)
          exp
        else
          lookup_var(@exp, @env)      
        end
      else
        if special_form?(@exp)
          eval_special_form(@exp, @env)
        else
          fun = _eval(car(@exp),@env)
          args = eval_list(cdr(@exp),@env)
          apply(fun, args)
        end
      end      
    end

    private
    def eval_list
    end
  end
end
