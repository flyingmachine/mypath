module MyPath
  class Handler
    class Gem < Handler
      def self.can_handle?(path)
        clean_path(path) =~ /\/gems\//
      end
      
      def local_path
        gem_path = /.*?\/gems\/.*?([^\/]+?-\d\..*)/.match(self.path)[1]
        if ENV['GEM_HOME']
          File.join(ENV['GEM_HOME'], 'gems', gem_path)
        else
        end
      end
      
    end
  end
end