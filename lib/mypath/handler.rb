module MyPath
  class Handler

    class << self
      attr_accessor :list
      
      def inherited(klass)
        self.list |= [klass]
      end
      
      def clean_path(path)
        /.*?(\/.*)/.match(path)[1]
      end
      
      def for(path)
        self.list.first{|h| h.can_handle?(path)}
      end
    end
    self.list = []    
    
    attr_accessor :path
    
    def initialize(path)
      self.path = self.class.clean_path(path)
    end
  end
end