module MyPath
  module Handler
    class << self
      attr_accessor :list
      
      def included(mod)
        self.list |= [mod]
      end
    end
    
    self.list = []
  end
end