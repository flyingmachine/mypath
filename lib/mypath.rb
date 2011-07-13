module MyPath
  require 'mypath/handler'
  require 'mypath/handler/gem'
  require 'mypath/handler/cwd'

  class << self    
    def find(path)
      finder = Handler.for(path)
    end
  end
end