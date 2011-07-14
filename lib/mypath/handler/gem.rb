module MyPath
  class Handler
    class Gem < Handler
      def self.can_handle?(path)
        clean_path(path) =~ /\/gems\//
      end
      
      def self.local_gem_paths
        @local_gem_paths ||= ::Gem.path.collect{ |g| File.join(g, 'gems') }
      end
      
      def local_path
        remote_gem_path = /.*?\/gems\/.*?([^\/]+?-\d\..*)/.match(self.path)[1]
        joined = self.class.local_gem_paths.collect{|g| File.join(g, remote_gem_path)}
        Dir[*joined].first
      end
    end
  end
end