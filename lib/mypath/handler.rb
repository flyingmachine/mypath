module MyPath
  class Handler

    class << self
      attr_accessor :list
      
      def inherited(klass)
        self.list |= [klass]
      end
      
      def clean_path(path)
        path.gsub(/:.*/, "")
      end
      
      def for(path)
        handler = self.list.detect{|h| h.can_handle?(path)}
        if handler
          handler.new(path)
        end
      end
    end
    self.list = []    
    
    attr_accessor :path
    
    def initialize(path)
      self.path = self.class.clean_path(path)
    end
  end
end