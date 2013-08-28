module MySchemeInRuby
  $primitive_fun_env = { 
    :+ => [:prim, lambda{|x,y| x+y }],
    :- => [:prim, lambda{|x,y| x-y }],
    :* => [:prim, lambda{|x,y| x*y }],
    :> => [:prim, lambda{|x,y| x>y }],
    :< => [:prim, lambda{|x,y| x<y }],
    :>= => [:prim, lambda{|x,y| x>=y }],
    :<= => [:prim, lambda{|x,y| x<=y }],
    :== => [:prim, lambda{|x,y| x==y }],
  }
  
  $list_env = { 
    :nil => [],
    :null? => [:prim, lambda{|list| list.is_null? }],
    :cons => [:prim, lambda{|a, b| list.cons(a, b) }],
    :car => [:prim, lambda{|list| list.car }],
    :cdr => [:prim, lambda{|list| list.cdr }],    
    :list => [:prim, lambda{ |*list| list.return_list(*list)}]
  }

  $boolean_env = { :true => true, :false => false}

  $global_env = [$list_env,$primitive_fun_env, $boolean_env]  
end
