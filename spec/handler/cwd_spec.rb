require 'spec_helper'

describe MyPath::Handler::CWD do
  describe ".can_handle?" do
    before {
      @original_dir = Dir.pwd
      Dir.chdir File.join(File.dirname(__FILE__), "..")
    }
    
    after {
      Dir.chdir @original_dir
    }
    
    it "handles paths that contain a file or directory contained in the current working directory" do

      Dir.pwd.should include("spec")
      MyPath::Handler::CWD.can_handle?("/some/path/with/handler/in/it").should be_true
    end
  end
  
  describe "#local_path" do
    let(:dummy_local_dir) { File.join(File.dirname(__FILE__), "..", "dummy_local_dir") }
    
    before {
      @original_dir = Dir.pwd
      Dir.chdir dummy_local_dir
    }
    
    after {
      Dir.chdir @original_dir
    }
    
    it "returns the corresponding local path" do
      handler = MyPath::Handler::CWD.new("/some/other/path/lib/dummy_lib.rb")
      
      handler.local_path.should == "lib/dummy_lib.rb"
      File.expand_path(handler.local_path).should == File.expand_path(File.join(dummy_local_dir, "lib/dummy_lib.rb"))
    end
    
    it "returns the corresponding local path for a path exactly corresponding to a relative local path" do
      handler = MyPath::Handler::CWD.new("lib")
      handler.local_path.should == "lib"
      
      handler = MyPath::Handler::CWD.new("lib/dummy_lib.rb")
      handler.local_path.should == "lib/dummy_lib.rb"
    end
  end
end