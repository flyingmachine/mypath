require 'spec_helper'

describe MyPath::Handler do
  it "has a list of all handler" do
    MyPath::Handler.list.should include(MyPath::Handler::Gem)
    MyPath::Handler.list.should include(MyPath::Handler::CWD)
  end
  
  it "adds a handler class to its array of handler when the class includes the Handler module" do
    
  end
end