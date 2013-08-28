module MySchemeInRuby
  class Parser
    def self.to_exp(source)
      program = source.strip().
        gsub(/[a-zA-Z\+\-\*><=][0-9a-zA-Z\+\-=!*]*/, ':\\0').
        gsub(/\s+/, ', ').
        gsub(/\(/, '[').
        gsub(/\)/, ']')
      eval(program)     
    end
  end
end
