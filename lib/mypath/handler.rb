module MyPath
  module Handler
    class << self
      attr_accessor :list
      
      def included(mod)
        self.list |= [mod]
        
        mod.extend(ClassMethods)
      end
    end
    
    self.list = []
    
    module ClassMethods
      def clean_path(path)
        /.*?(\/.*)/.match(path)[1]
      end
    end
  end
end