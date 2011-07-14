module MyPath
  module Handler
    class Gem
      include Handler
      
      def self.can_handle?(path)
        path = clean_path(path)
        
        path =~ /\/gems\//
      end
    end
  end
end