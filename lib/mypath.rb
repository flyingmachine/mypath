require 'rubygems'

module MyPath
  require 'mypath/handler'
  require 'mypath/handler/gem'
  require 'mypath/handler/cwd'

  class << self    
    # Insstead of just finding one based on can_handle, it should call each in turn until it gets a path
    def local_path_for(path)
      handler = Handler.for(path)
      if handler
        handler.local_path
      end
    end
  end
end