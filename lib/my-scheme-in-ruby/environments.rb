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
  $boolean_env = { :true => true, :false => false}
  $global_env = [$primitive_fun_env, $boolean_env]
end
