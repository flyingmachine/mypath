require 'spec_helper'

describe MyPath::Handler do
  it "has a list of all handlers" do
    MyPath::Handler.list.should include(MyPath::Handler::Gem)
    MyPath::Handler.list.should include(MyPath::Handler::CWD)
  end
  
  it "adds a handler class to its array of handler when the class inherits from Handler" do
    
  end
  
  describe ".clean_path" do
    it "removes ':' and everything following" do
      MyPath::Handler.clean_path("/test/file:32:in 'test'").should == "/test/file"
    end
  end
end