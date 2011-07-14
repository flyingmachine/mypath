require 'spec_helper'

describe MyPath::Handler::Gem do
  let(:remote_dummy_gem_path) { "/srv/ruby/gems/1.8/dummy_gem-0.0.0/dummy_gem.rb" }
  let(:handler) { MyPath::Handler::Gem.new(remote_dummy_gem_path) }
  
  let(:gem_home) { File.expand_path(File.join(File.dirname(__FILE__), "../dummy_gem_home")) }
  let(:local_dummy_gem_path) { File.join(gem_home, 'gems/dummy_gem-0.0.0/dummy_gem.rb') }

  
  describe ".can_handle?" do
    it "handles paths that contain /gems/" do
      MyPath::Handler::Gem.can_handle?(remote_dummy_gem_path).should be_true
    end
  end
  
  describe "#local_path" do
    it "returns a path relative to your local GEM_HOME environment variable" do
      old_gem_home = ENV['GEM_HOME']
      ENV['GEM_HOME'] = gem_home
      
      handler.local_path.should == local_dummy_gem_path
      
      ENV['GEM_HOME'] = old_gem_home
    end
  end
end