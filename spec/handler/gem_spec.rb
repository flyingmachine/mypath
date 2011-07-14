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
    
    it "does not handle papths that do not contain /gems/" do
      MyPath::Handler::Gem.can_handle?("/usr/sbin/test").should be_false
    end
  end
  
  describe "#local_path" do
    it "returns a path relative to your local GEM_HOME environment variable" do
      handler.class.stub(:local_gem_paths).and_return([File.join(gem_home, "gems")])
      handler.local_path.should == local_dummy_gem_path
    end
  end
  
  describe "#local_gem_paths" do
    it "ends in 'gems'" do
      handler.class.local_gem_paths.each{ |g| g.should =~ /gems$/ } 
    end
  end
end