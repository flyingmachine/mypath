module MyPath
  class Handler
    class CWD < Handler
      def self.can_handle?(path)
        parts = path.split("/")
        !Dir[*parts].empty?
      end
      
      def local_path
        parts = path.split("/")
        rejoined = []
        parts.each_with_index do |part, index|
          rejoined << parts[index..-1].join("/")
        end
        local = Dir[*rejoined].first
      end
    end
  end
end